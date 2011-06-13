;;; ob-lilypond.el --- org-babel functions for lilypond evaluation

;; Copyright (C) Shelagh Manton, Martyn Jago

;; Authors: Shelagh Manton, Martyn Jago
;; Keywords: literate programming, weaving markup
;; Homepage: https://github.com/sshelagh/ob-lilypond
;; Version: 0.01

;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING. If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;;
;;

;;
;; If you are planning on adding a language to org-babel we would ask
;; that if possible you fill out the FSF copyright assignment form
;; available at http://orgmode.org/request-assign-future.txt as this
;; will make it possible to include your language support in the core
;; of Org-mode, otherwise unassigned language support files can still
;; be included in the contrib/ directory of the Org-mode repository.

;;; Requirements:

;; You need to have a copy of LilyPond

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

(defvar ly-OSX-ly-path
  "/Applications/lilypond.app/Contents/Resources/bin/lilypond")
(defvar ly-OSX-pdf-path "open")
(defvar ly-OSX-midi-path "open")

(defvar ly-nix-ly-path "/usr/bin/lilypond")
(defvar ly-nix-pdf-path "evince")
(defvar ly-nix-midi-path "timidity")

(defvar ly-win32-ly-path "lilypond")
(defvar ly-win32-pdf-path "")
(defvar ly-win32-midi-path "")

(defvar ly-gen-png nil)
"Image generation (png) can be turned on by default by setting
LY-GEN-PNG to t"

(defvar ly-gen-svg nil)
"Image generation (SVG) can be turned on by default by setting
LY-GEN-SVG to t"

(defvar ly-gen-html nil)
"HTML generation can be turned on by default by setting
LY-GEN-HTML to t"

(defvar ly-use-eps nil)
"You can force the compiler to use the EPS backend by setting
LY-USE-EPS to t"

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
                         ".ly")))
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
  (switch-to-buffer-other-window "*lilypond*")
  (erase-buffer)
  (call-process
;;   "lilypond" nil "*lilypond*" t 
   (ly-determine-ly-path) nil "*lilypond*" t 
   (if ly-gen-png  "--png"  "")
   (if ly-gen-html "--html" "")
   (if ly-use-eps  "-dbackend=eps" "")
   (if ly-gen-svg  "-dbackend=svg" "")
   file-name)
  (goto-char (point-min))
  (ly-check-for-compile-error))

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
          (shell-command (concat (ly-determine-pdf-path) " " pdf-file))
        (error  "No pdf file generated so can't display!")))))

(defun ly-attempt-to-play-midi (file-name)
  (when ly-play-midi-post-tangle
    (let ((midi-file (concat 
                      (file-name-sans-extension
                       file-name)
                      ".midi")))
      (if (file-exists-p midi-file)
          (shell-command (concat (ly-determine-midi-path) " " midi-file))
        (message "No midi file generated so can't play!")))))

(defun ly-determine-ly-path ()
  (cond ((string= system-type  "darwin")
         ly-OSX-ly-path)
        (t ly-nix-ly-path)))

(defun ly-determine-pdf-path ()
  (cond ((string= system-type  "darwin")
         ly-OSX-pdf-path)
        ((string= system-type "win32")
         ly-win32-pdf-path)
        (t ly-nix-pdf-path)))

(defun ly-determine-midi-path ()
  (cond ((string= system-type  "darwin")
         ly-OSX-midi-path)
        ((string= system-type "win32")
         ly-win32-midi-path)
        (t ly-nix-midi-path)))

(defun ly-toggle-midi-play ()
  (interactive)
  (setq ly-play-midi-post-tangle
        (not ly-play-midi-post-tangle))
  (message (concat "Post-Tangle MIDI play has been "
                   (if ly-play-midi-post-tangle
                       "ENABLED." "DISABLED."))))

(defun ly-toggle-pdf-display ()
  (interactive)
  (setq ly-display-pdf-post-tangle
        (not ly-display-pdf-post-tangle))
  (message (concat "Post-Tangle PDF display has been "
                   (if ly-display-pdf-post-tangle
                       "ENABLED." "DISABLED."))))

(defun ly-toggle-png-generation ()
  (interactive)
  (setq ly-gen-png
        (not ly-gen-png))
  (message (concat "PNG image generation has been "
                   (if ly-gen-png "ENABLED." "DISABLED."))))

(defun ly-toggle-html-generation ()
  (interactive)
  (setq ly-gen-html
        (not ly-gen-html))
  (message (concat "HTML generation has been "
                   (if ly-gen-html "ENABLED." "DISABLED."))))

(provide 'ob-lilypond)

;;; ob-lilypond.el ends here

