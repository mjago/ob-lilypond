(require 'ert)
(require 'ob-lilypond)
(defalias 'ert-ignore 'ert-pass)
 ;; (setq ly-test-params
;;       '((:colname-names) (:rowname-names)
;;        (:result-params "file" "replace") (:result-type . value)
;;        (:comments . "") (:shebang . "")
;;        (:cache . "no") (:noweb . "no")
;;        (:tangle . "yes") (:exports . "results")
;;        (:results . "file replace") (:file . "test.ly")
;;        (:hlines . "no") (:session . "none")))
 
(setq ly-here (file-name-directory (buffer-file-name)))

(ert-deftest ly-test-assert ()
  (should t))

;; ert-deftest ly-test-ly-process-compile-error ()
;;   (set-buffer (get-buffer-create "*lilypond*"))
;;   (insert-file-contents (concat ly-here "test-build/test.error") nil nil nil t)
;;   (goto-char (point-min))
;;   (search-forward "error:" nil t)
;; (ly-process-compile-error (concat ly-here "test-build/test.ly"))
;;   (should-error (ly-process-compile-error (concat ly-here "test-build/test.ly"))  
;;                 :type 'error) 
;; ;
                                        ;  (find-file (concat ly-here "test-build/test.error"))
  ;; (set-buffer (get-buffer-create "test.org")) 
  ;; (insert-file-contents (concat ly-here "test-build/test.error") nil nil nil t)
  ;;  (should (equal 210 (point)))
  ;; (exchange-point-and-mark)
  ;; (should (equal (+ 210 (length "line 25"))
  ;;                (point)))
   ;; (kill-buffer "*lilypond*")
  ;; (kill-buffer "test.org")
;;  )
 
(ert-deftest ly-test-ly-parse-line-num ()
  (set-buffer (get-buffer-create "test.error"))
  (insert-file-contents (concat ly-here "test-build/test.error")
                        nil nil nil t)
  (goto-char (point-min))
  (search-forward "error:")
  (should (equal 25 (ly-parse-line-num)))
  (kill-buffer "test.error")
  )
      
(ert-deftest ly-test-ly-parse-error-line ()
  (let ((ly-file (concat ly-here "test-build/test.ly")))
   (should (equal "line 20"
                  (ly-parse-error-line ly-file 20)))
   (should (not (ly-parse-error-line ly-file 0)))
   ))

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
    (setq ly-display-pdf-post-tangle post-tangle)
  ))

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

    (setq ly-play-midi-post-tangle post-tangle)
  ))

(ert-deftest ly-test-ly-determine-ly-path ()
  (should (equal ly-OSX-ly-path
                 (ly-determine-ly-path "darwin")))
  (should (equal ly-win32-ly-path
                 (ly-determine-ly-path "win32")))
  (should (equal ly-nix-ly-path
                 (ly-determine-ly-path "nix")))
  )

(ert-deftest ly-test-ly-determine-pdf-path ()
  (should (equal ly-OSX-pdf-path
                 (ly-determine-pdf-path "darwin")))
  (should (equal ly-win32-pdf-path
                 (ly-determine-pdf-path "win32")))
  (should (equal ly-nix-pdf-path
                 (ly-determine-pdf-path "nix")))
  )

(ert-deftest ly-test-ly-determine-midi-path ()
  (should (equal ly-OSX-midi-path
                 (ly-determine-midi-path "darwin")))
  (should (equal ly-win32-midi-path
                 (ly-determine-midi-path "win32")))
  (should (equal ly-nix-midi-path
                 (ly-determine-midi-path "nix")))
  )

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
                 (ly-switch-extension "test-name.abc" "")))
  )

(ert-deftest ly-test-ly-switch-extension-with-paths ()
  (should (equal "/some/path/to/test-name.xyz"
                 (ly-switch-extension "/some/path/to/test-name" ".xyz")))
  )

;; (ert-deftest lilypond-tangle-exists? ()
;;   (should (fboundp 'lilypond-tangle)) )
;; (ert-deftest ly-test-org-babel-prep-session ()
;;   (should-error (org-babel-prep-session:lilypond  nil nil)))

;; (ert-deftest test-org-babel-default-header-args:lilypond ()
;;   (should (equal '((:results . "file") (:exports . "results"))
;;                  org-babel-default-header-args:lilypond)))
;; (ert-deftest test-lilypond-build-dir ()
;;   "./build"
;;   )
    
;;(ert-deftest test-org-babel-expand-body:lilypond()
  ;;   (should (equal "abc 123
  ;; def 456
  ;; " 
  ;;                  (org-babel-expand-body:lilypond
  ;;                   "abc 123\ndef 456\n"
  ;;                        ly-test-params)))
  ;; (setq test-params ly-test-params)
  ;; (setq test-params (append '((:var abc . "ghi")(:other . "something else"))tes
;;  t-params))
;;  (should (equal "" params)) 01626 352367
  ;; (should (equal '((:var abc . "ghi")) (org-babel-get-header test-params :var))) 
  ;; (should (equal '((:other . "something else"))
  ;;                (org-babel-get-header test-params :other)))
   ;; (should (equal "abc 123\ndef 456\n"
   ;;                 (org-babel-expand-body:lilypond
   ;;                  "abc 123\ndef 456\n"
   ;;                  test-params)))

;;  )
 
