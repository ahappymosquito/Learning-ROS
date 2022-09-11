
(cl:in-package :asdf)

(defsystem "demo0-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "dd" :depends-on ("_package_dd"))
    (:file "_package_dd" :depends-on ("_package"))
  ))