(defalias 'lilypond-mode 'LilyPond-mode)

(defun lilypond-tangle ()
  (interactive)
  (save-buffer "test.org")
  (eval-buffer "ob-lilypond.el")
  (org-babel-tangle-file "/home/martyn/.emacs.d/martyn/martyn/ob-lilypond/test.org"))

(global-set-key [f12] 'lilypond-tangle)
  
(require 'ob)
(require 'ob-eval)

(add-to-list 'org-babel-tangle-lang-exts '("LilyPond" . "ly"))

(defvar org-babel-default-header-args:lilypond
  '((:results . "file") (:exports . "results"))
  "Default arguments to use when evaluating a lilypond source block.")

(defvar lilypond-build-dir "./build/"
  "Build directory for lilypad build artifacts")
 
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

(defun ly-execute-tangled ()
  (interactive)
  (let ((ly-temp-file "all.ly")
        (ly-eps nil))
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
            (progn
              (shell-command
               (concat "open "
                       (file-name-nondirectory
                        (file-name-sans-extension
                         ly-temp-file))
                       ".pdf")) 
              (shell-command
               (concat "open "
                       (file-name-nondirectory
                        (file-name-sans-extension
                         ly-temp-file))
                       ".midi")))
          (message "Error in Compilation"))
        )))
  
(provide 'ly-execute-tangled)
(require 'ly-execute-tangled)
