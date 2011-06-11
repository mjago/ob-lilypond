(require 'ob)
(require 'ob-eval)

(defalias 'lilypond-mode 'LilyPond-mode)
(add-to-list 'org-babel-tangle-lang-exts '("LilyPond" . "ly"))

(defvar ob-ly-compile-post-tangle t
    "Following the org-babel-tangle (C-c C-v t) command,
OB-LY-COMPILE-POST-TANGLE determines whether ob-lilypond should
automatically attempt to compile the resultant tangled file.
If the value is nil, no automated compilation takes place.
Default value is t")

(defvar ob-ly-draw-pdf-post-tangle t
  "Following a successful LilyPond compilation
OB-LY-DRAW-PDF-POST-TANGLE determines whether to automate the
drawing / redrawing of the resultant pdf. If the value is nil,
the pdf is not automatically redrawn. Default value is t")

(defvar ob-ly-play-midi-post-tangle t
  "Following a successful LilyPond compilation
OB-LY-PLAY-MIDI-POST-TANGLE determines whether to automate the
playing of the resultant midi file. If the value is nil,
the midi file is not automatically played. Default value is t")

(defvar org-babel-default-header-args:lilypond
  '((:results . "file") (:exports . "results"))
  "Default arguments to use when evaluating a lilypond source block.")

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

(setq ly-app-path  "/Applications/lilypond.app/Contents/Resources/bin/lilypond")

(defun org-babel-execute:lilypond (body params)
  "Execute a block of LilyPond syntax with org-babel.
This function is called by `org-babel-execute-src-block'."

  (error "doesn't get here!!")
  
  (let* ((result-params (cdr (assoc :result-params params)))
	 (out-file (cdr (assoc :file params)))
	 (cmdline (or (cdr (assoc :cmdline params))
                      out-file))
	 (cmd (or (cdr (assoc :cmd params)) ly-app-path))
	 (in-file (org-babel-temp-file "lilypond-")))

    (with-temp-file in-file
      (insert (org-babel-expand-body:lilypond body params)))

    (org-babel-eval
     (concat cmd ""
	     " " (org-babel-process-file-name in-file)
	     " " cmdline
	     ) "")
    nil)) ;; signal that output has already been written to file

(defun org-babel-prep-session:lilypond (session params)
  "Return an error because LilyPond exporter does not support sessions."
  (error "Sorry, LilyPond does not currently support sessions!"))

(provide 'ob-lilypond)

;;; ob-lilypond.el ends here

(defun org-babel-execute-tangled-ly ()
  (interactive)
  (when ob-ly-compile-post-tangle
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
          (ly-eps nil)
          (ly-compiled nil))
    
      (if (file-exists-p ly-tangled-file)
          (progn
            (when (file-exists-p ly-temp-file)
              (delete-file ly-temp-file))
            (rename-file ly-tangled-file
                         ly-temp-file))
        (error "ERROR: Tangle Failed!")t)
      (message "Compiling LilyPond...")
      (save-excursion
        (switch-to-buffer-other-window "*lilypond*")
        (set-buffer "*lilypond*")
        (erase-buffer)
        (call-process
         ly-app-path nil
         "*lilypond*"
         t
         (if ly-eps
             "-dbackend=eps"
           "")
         ly-temp-file)
        (goto-char (point-min))
        (if (not (search-forward "error:" nil t))
            (setq ly-compiled t)
          (message "Error in Compilation!")))
      
      (when ly-compiled
        (progn
          (when ob-ly-draw-pdf-post-tangle
            (if (file-exists-p
                 (concat 
                  (file-name-sans-extension
                   ly-temp-file)
                  ".pdf"))
                (shell-command
                 (concat "open "
                         (file-name-sans-extension
                          ly-temp-file)
                         ".pdf"))
              (message "No pdf file generated so can't display!")))
          (when ob-ly-play-midi-post-tangle
            (if (file-exists-p
                 (concat 
                  (file-name-sans-extension
                   ly-temp-file)
                  ".midi"))
                (shell-command
                 (concat "open "
                         (file-name-sans-extension
                          ly-temp-file)
                         ".midi"))
              (message "No midi file generated so can't play!"))))))))
  
