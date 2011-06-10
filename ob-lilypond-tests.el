(provide 'ob-lilypond-tests )
(require 'ert)
(require 'ob-lilypond)
(defalias 'ert-ignore 'ert-pass)
   
(setq lilypond-test-params
      '((:colname-names) (:rowname-names)
       (:result-params "file" "replace") (:result-type . value)
       (:comments . "") (:shebang . "")
       (:cache . "no") (:noweb . "no")
       (:tangle . "yes") (:exports . "results")
       (:results . "file replace") (:file . "test.ly")
       (:hlines . "no") (:session . "none")))

(ert-deftest lilypond-test-assert ()
  (should t))
(ert-deftest lilypond-tangle-exists? ()
  (should (fboundp 'lilypond-tangle)) )
(ert-deftest lilypond-test-org-babel-prep-session ()
  (should-error (org-babel-prep-session:lilypond  nil nil)))

(ert-deftest test-org-babel-default-header-args:lilypond ()
  (should (equal '((:results . "file") (:exports . "results"))
                 org-babel-default-header-args:lilypond)))
(ert-deftest test-lilypond-build-dir ()
  "./build"
  )
 
(ert-deftest test-org-babel-expand-body:lilypond()
;;   (should (equal "abc 123
;; def 456
;; " 
;;                  (org-babel-expand-body:lilypond
;;                   "abc 123\ndef 456\n"
  ;;                        lilypond-test-params)))
  (setq test-params lilypond-test-params)
  (setq test-params (append '((:var abc . "ghi")(:other . "something else"))test-params))
;;  (should (equal "" params)) 01626 352367
  (should (equal '((:var abc . "ghi")) (org-babel-get-header test-params :var))) 
  (should (equal '((:other . "something else"))
                 (org-babel-get-header test-params :other)))
   ;; (should (equal "abc 123\ndef 456\n"
   ;;                 (org-babel-expand-body:lilypond
   ;;                  "abc 123\ndef 456\n"
   ;;                  test-params)))

  )
 
 

 
