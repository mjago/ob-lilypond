(require 'ob)
(require 'ob-eval)
(defalias 'lilypond-mode 'LilyPond-mode)
(add-to-list 'org-babel-tangle-lang-exts '("LilyPond" . "ly"))

(defvar ly-compile-post-tangle t
  "Following the org-babel-tangle (C-c C-v t) command,
LY-COMPILE-POST-TANGLE determines whether ob-lilypond should
automatically attempt to compile the resultant tangled file.
If the value is nil, no automated compilation takes place.
Default value is t")

(defvar ly-display-pdf-post-tangle t
  "Following a successful LilyPond compilation
LY-DISPLAY-PDF-POST-TANGLE determines whether to automate the
drawing / redrawing of the resultant pdf. If the value is nil,
the pdf is not automatically redrawn. Default value is t")

(defvar ly-play-midi-post-tangle t
  "Following a successful LilyPond compilation
LY-PLAY-MIDI-POST-TANGLE determines whether to automate the
playing of the resultant midi file. If the value is nil,
the midi file is not automatically played. Default value is t")

(defvar ly-OSX-app-path
  "/Applications/lilypond.app/Contents/Resources/bin/lilypond")
(defvar ly-unix-app-path "")
(defvar ly-win32-app-path "")

(defun org-babel-expand-body:lilypond (body params)
  "Expand BODY according to PARAMS, return the expanded body."

  (let ((vars (mapcar #'cdr (org-babel-get-header params :var))))
    (mapc
     (lambda (pair)
       (let ((name (symbol-name (car pair)))
	     (value (cdr pair)))
	 (setq body
	       (replace-regexp-in-string
		(concat "\$" (regexp-quote name))
		(if (stringp value) value (format "%S" value))
		body))))
     vars)
    body))

(defun org-babel-execute:lilypond (body params)
  "This function is called by `org-babel-execute-src-block'.
Tangle all lilypond blocks and process the result"

  (if (org-babel-tangle "yes" "lilypond")
      (ly-execute-tangled-ly)))

(defun org-babel-prep-session:lilypond (session params)
  "Return an error because LilyPond exporter does not support sessions."
  (error "Sorry, LilyPond does not currently support sessions!"))

(defun ly-execute-tangled-ly ()
  (when ly-compile-post-tangle
    (let ((ly-tangled-file (concat
                            (file-name-nondirectory
                             (file-name-sans-extension
                              (buffer-file-name)))
                            ".lilypond"))
          (ly-temp-file (concat
                         (file-name-nondirectory
                          (file-name-sans-extension
                           (buffer-file-name)))
                         ".ly"))
          (ly-eps nil))
      (progn
        (if (file-exists-p ly-tangled-file)
            (progn
              (when (file-exists-p ly-temp-file)
                (delete-file ly-temp-file))
              (rename-file ly-tangled-file
                           ly-temp-file))
          (error "Error: Tangle Failed!") t)
        (if (ly-compile-lilyfile ly-temp-file)
            (progn
              (ly-attempt-to-open-pdf ly-temp-file)
              (ly-attempt-to-play-midi ly-temp-file))
          (error "Error in Compilation!"))))) nil)

(defun ly-compile-lilyfile (file-name)
  (message "Compiling LilyPond...")
  (let ((ly-app-path (ly-determine-app-path)))
    (switch-to-buffer-other-window "*lilypond*")
    (erase-buffer)
    (call-process
     ly-app-path nil "*lilypond*" t 
     (if ly-eps
         "-dbackend=eps"
       "")
     file-name)
    (goto-char (point-min))
    (ly-check-for-compile-error)))

(defun ly-check-for-compile-error ()
  (if (not (search-forward "error:" nil t))
      (not (other-window -1))
    (ly-process-compile-error)))

(defun ly-process-compile-error ()
  (goto-char (point-at-bol))
  (forward-line 2)
  (let ((bol (point)))
    (goto-char (point-at-eol))
    (let ((snippet (buffer-substring bol (point))))
      (other-window -1)
      (let ((temp (point)))
        (goto-char (point-min))
        (if (search-forward snippet nil t)
            (progn
              (set-mark (point))
              (goto-char (point-at-bol)))
          (goto-char temp)
          nil)))))

(defun ly-attempt-to-open-pdf (file-name)
  (when ly-display-pdf-post-tangle
    (let ((pdf-file (concat 
                     (file-name-sans-extension
                      file-name)
                     ".pdf")))
      (if (file-exists-p pdf-file)
          (shell-command (concat "open " pdf-file))
        (error  "No pdf file generated so can't display!")))))

(defun ly-attempt-to-play-midi (file-name)
  (when ly-play-midi-post-tangle
    (let ((midi-file (concat 
                      (file-name-sans-extension
                       file-name)
                      ".midi")))
      (if (file-exists-p midi-file)
          (shell-command (concat "open " midi-file))
        (message "No midi file generated so can't play!")))))

(defun ly-determine-app-path ()
  (cond ((string= system-type  "darwin")
         ly-OSX-app-path)
        ((string= system-type "win32")
         ly-win32-app-path)
        (t ly-unix-app-path)))

(defun ly-toggle-midi-play ()
  (interactive)
  (setq ly-play-midi-post-tangle
        (not ly-play-midi-post-tangle)))

(defun ly-toggle-pdf-display ()
  (interactive)
  (setq ly-display-pdf-post-tangle
        (not ly-display-pdf-post-tangle)))

(provide 'ob-lilypond)

;;; ob-lilypond.el ends here

