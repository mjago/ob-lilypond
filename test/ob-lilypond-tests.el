(require 'ert)
(require 'ob-lilypond)
(defalias 'ert-ignore 'ert-pass)

(save-excursion
  (set-buffer (get-buffer-create "ob-lilypond-tests.el"))
  (setq ly-here (file-name-directory (buffer-file-name (current-buffer)))))
 
(ert-deftest ly-test-assert ()
  (should t))
 
(ert-deftest ly-test-ob-lilypond-feature-provision ()
  (should (featurep 'ob-lilypond)))
  
(ert-deftest ly-test-check-lilypond-alias ()
  (should (fboundp 'lilypond-mode)))

(ert-deftest ly-test-org-babel-tangle-lang-exts ()
  (let ((found nil)
        (list org-babel-tangle-lang-exts))
    (while list
      (when (equal (car list) '("LilyPond" . "ly"))
        (setq found t))
      (setq list (cdr list)))
    (should found))) 
     
(ert-deftest ly-test-org-babel-prep-session:lilypond ()
  (should-error (org-babel-prep-session:lilypond nil nil))
  :type 'error)

(ert-deftest ly-test-ly-version-const () 
  (should (boundp 'ly-version)))

(ert-deftest ly-test-ly-version-command ()
  (should (equal "ob-lilypond version 0.1" (ly-version)))
  (with-temp-buffer
    (ly-version t)
    (should (equal "ob-lilypond version 0.1"
                   (buffer-substring (point-min) (point-max))))))

(ert-deftest ly-test-ly-compile-lilyfile ()
  (should (equal
           `(,(ly-determine-ly-path)    ;program
             nil                        ;infile
             "*lilypond*"               ;buffer
             t                          ;display
             ,(if ly-gen-png  "--png"  "") ;&rest...
             ,(if ly-gen-html "--html" "")   
             ,(if ly-use-eps  "-dbackend=eps" "")
             ,(if ly-gen-svg  "-dbackend=svg" "")
             "--output=test-file"
             "test-file.ly")
           (ly-compile-lilyfile "test-file.ly" t))))

(ert-deftest ly-test-ly-compile-post-tangle ()
  (should (boundp 'ly-compile-post-tangle)))

(ert-deftest ly-test-ly-display-pdf-post-tangle ()
  (should (boundp 'ly-display-pdf-post-tangle)))

(ert-deftest ly-test-ly-play-midi-post-tangle ()
  (should (boundp 'ly-play-midi-post-tangle)))

(ert-deftest ly-test-ly-OSX-ly-path ()
  (should (boundp 'ly-OSX-ly-path))
  (should (stringp ly-OSX-ly-path)))

(ert-deftest ly-test-ly-OSX-pdf-path ()
  (should (boundp 'ly-OSX-pdf-path))
  (should (stringp ly-OSX-pdf-path)))

(ert-deftest ly-test-ly-OSX-midi-path ()
  (should (boundp 'ly-OSX-midi-path))
  (should (stringp ly-OSX-midi-path)))

(ert-deftest ly-test-ly-nix-ly-path ()
  (should (boundp 'ly-nix-ly-path))
  (should (stringp ly-nix-ly-path)))

(ert-deftest ly-test-ly-nix-pdf-path ()
  (should (boundp 'ly-nix-pdf-path))
  (should (stringp ly-nix-pdf-path)))

(ert-deftest ly-test-ly-nix-midi-path ()
  (should (boundp 'ly-nix-midi-path))
  (should (stringp ly-nix-midi-path)))

(ert-deftest ly-test-ly-win32-ly-path ()
  (should (boundp 'ly-win32-ly-path))
  (should (stringp ly-win32-ly-path)))

(ert-deftest ly-test-ly-win32-pdf-path ()
  (should (boundp 'ly-win32-pdf-path))
  (should (stringp ly-win32-pdf-path)))

(ert-deftest ly-test-ly-win32-midi-path ()
  (should (boundp 'ly-win32-midi-path))
  (should (stringp ly-win32-midi-path)))

(ert-deftest ly-test-ly-gen-png ()
  (should (boundp 'ly-gen-png)))

(ert-deftest ly-test-ly-gen-svg ()
  (should (boundp 'ly-gen-svg)))

(ert-deftest ly-test-ly-gen-html ()
  (should (boundp 'ly-gen-html)))

(ert-deftest ly-test-use-eps ()
  (should (boundp 'ly-use-eps)))

(ert-deftest ly-test-org-babel-default-header-args:lilypond ()
  (should (equal  '((:tangle . "yes")
                    (:noweb . "yes")
                    (:results . "silent")
                    (:comments . "yes"))
                  org-babel-default-header-args:lilypond)))
       
;;TODO finish...
(ert-deftest ly-test-org-babel-expand-body:lilypond ()
  (should (equal "This is a test"
                 (org-babel-expand-body:lilypond "This is a test" ()))))

;;TODO (ert-deftest ly-test-org-babel-execute:lilypond ())

(ert-deftest ly-test-ly-check-for-compile-error ()
  (set-buffer (get-buffer-create "*lilypond*"))
  (erase-buffer)
  (should (not (ly-check-for-compile-error nil t)))
  (insert-file-contents (concat ly-here "test-build/test.error") nil nil nil t)
  (goto-char (point-min))
  (should (ly-check-for-compile-error nil t))
  (kill-buffer "*lilypond*"))

(ert-deftest ly-test-ly-process-compile-error ()
  (find-file-other-window (concat ly-here "test-build/broken.org"))
  (set-buffer (get-buffer-create "*lilypond*"))
  (insert-file-contents (concat ly-here "test-build/test.error") nil nil nil t)
  (goto-char (point-min))
  (search-forward "error:" nil t)
  (should-error
   (ly-process-compile-error (concat ly-here "test-build/broken.ly"))
   :type 'error)
  (set-buffer "broken.org")
  (should (equal 238 (point)))
  (exchange-point-and-mark)
  (should (equal (+ 238 (length "line 25")) (point)))
  (kill-buffer "*lilypond*")
  (kill-buffer "broken.org"))
   
(ert-deftest ly-test-ly-mark-error-line ()
  (let ((file-name (concat ly-here "test-build/broken.org"))
        (expected-point-min 198)
        (expected-point-max 205)
        (line "line 20"))
    (find-file-other-window file-name)
    (ly-mark-error-line file-name line)
    (should (equal expected-point-min (point)))
  
    (exchange-point-and-mark)
    (should (= expected-point-max (point)))
    (kill-buffer (file-name-nondirectory file-name))))

(ert-deftest ly-test-ly-parse-line-num ()
  (with-temp-buffer
    (insert-file-contents (concat ly-here "test-build/test.error")
                          nil nil nil t)
    (goto-char (point-min))
    (search-forward "error:")
    (should (equal 25 (ly-parse-line-num (current-buffer))))))
  
(ert-deftest ly-test-ly-parse-error-line ()
  (let ((ly-file (concat ly-here "test-build/broken.ly")))
    (should (equal "line 20"
                   (ly-parse-error-line ly-file 20)))
    (should (not (ly-parse-error-line ly-file 0)))))
    
(ert-deftest ly-test-ly-attempt-to-open-pdf ()
  (let ((post-tangle ly-display-pdf-post-tangle)
        (ly-file (concat ly-here "test-build/test.ly"))
        (pdf-file (concat ly-here "test-build/test.pdf")))
    (setq ly-open-pdf-post-tangle t)
    (when (not (file-exists-p pdf-file))
      (set-buffer (get-buffer-create pdf-file))
      (write-file pdf-file))
    (should (equal 
             (concat
              (ly-determine-pdf-path) " " pdf-file)
             (ly-attempt-to-open-pdf ly-file t)))
    (delete-file pdf-file)
    (should (equal
             "No pdf file generated so can't display!"
             (ly-attempt-to-open-pdf pdf-file)))
    (setq ly-display-pdf-post-tangle post-tangle)))

(ert-deftest ly-test-ly-attempt-to-play-midi ()
  (let ((post-tangle ly-play-midi-post-tangle)
        (ly-file (concat ly-here "test-build/test.ly"))
        (midi-file (concat ly-here "test-build/test.midi")))
    (setq ly-play-midi-post-tangle t)
    (when (not (file-exists-p midi-file))
      (set-buffer (get-buffer-create midi-file))
      (write-file midi-file))
    (should (equal
             (concat
              (ly-determine-midi-path) " " midi-file)
             (ly-attempt-to-play-midi ly-file t)))
    (delete-file midi-file)
    (should (equal
             "No midi file generated so can't play!"
             (ly-attempt-to-play-midi midi-file)))
    (setq ly-play-midi-post-tangle post-tangle)))

(ert-deftest ly-test-ly-determine-ly-path ()
  (should (equal ly-OSX-ly-path
                 (ly-determine-ly-path "darwin")))
  (should (equal ly-win32-ly-path
                 (ly-determine-ly-path "win32")))
  (should (equal ly-nix-ly-path
                 (ly-determine-ly-path "nix"))))

(ert-deftest ly-test-ly-determine-pdf-path ()
  (should (equal ly-OSX-pdf-path
                 (ly-determine-pdf-path "darwin")))
  (should (equal ly-win32-pdf-path
                 (ly-determine-pdf-path "win32")))
  (should (equal ly-nix-pdf-path
                 (ly-determine-pdf-path "nix"))))

(ert-deftest ly-test-ly-determine-midi-path ()
  (should (equal ly-OSX-midi-path
                 (ly-determine-midi-path "darwin")))
  (should (equal ly-win32-midi-path
                 (ly-determine-midi-path "win32")))
  (should (equal ly-nix-midi-path
                 (ly-determine-midi-path "nix"))))
 
(ert-deftest ly-test-ly-toggle-midi-play-toggles-flag ()
  (if ly-play-midi-post-tangle
      (progn
        (ly-toggle-midi-play)
         (should (not ly-play-midi-post-tangle))
        (ly-toggle-midi-play)
        (should ly-play-midi-post-tangle))
    (ly-toggle-midi-play)
    (should ly-play-midi-post-tangle)
    (ly-toggle-midi-play)
    (should (not ly-play-midi-post-tangle))))

(ert-deftest ly-test-ly-toggle-pdf-display-toggles-flag ()
  (if ly-display-pdf-post-tangle
      (progn
        (ly-toggle-pdf-display)
         (should (not ly-display-pdf-post-tangle))
        (ly-toggle-pdf-display)
        (should ly-display-pdf-post-tangle))
    (ly-toggle-pdf-display)
    (should ly-display-pdf-post-tangle)
    (ly-toggle-pdf-display)
    (should (not ly-display-pdf-post-tangle))))

(ert-deftest ly-test-ly-toggle-png-generation-toggles-flag ()
  (if ly-gen-png
      (progn
        (ly-toggle-png-generation)
         (should (not ly-gen-png))
        (ly-toggle-png-generation)
        (should ly-gen-png))
    (ly-toggle-png-generation)
    (should ly-gen-png)
    (ly-toggle-png-generation)
    (should (not ly-gen-png))))

(ert-deftest ly-test-ly-toggle-html-generation-toggles-flag ()
  (if ly-gen-html
      (progn
        (ly-toggle-html-generation)
         (should (not ly-gen-html))
        (ly-toggle-html-generation)
        (should ly-gen-html))
    (ly-toggle-html-generation)
    (should ly-gen-html)
    (ly-toggle-html-generation)
    (should (not ly-gen-html))))

(ert-deftest ly-test-ly-switch-extension-with-extensions ()
  (should (equal "test-name.xyz"
                 (ly-switch-extension "test-name" ".xyz")))
  (should (equal "test-name.xyz"
                 (ly-switch-extension "test-name.abc" ".xyz")))
  (should (equal "test-name"
                 (ly-switch-extension "test-name.abc" ""))))

(ert-deftest ly-test-ly-switch-extension-with-paths ()
  (should (equal "/some/path/to/test-name.xyz"
                  (ly-switch-extension "/some/path/to/test-name" ".xyz"))))

;;; ob-lilypond-tests.el ends here
