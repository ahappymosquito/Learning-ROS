
(cl:in-package :asdf)

(defsystem "demo1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "addints" :depends-on ("_package_addints"))
    (:file "_package_addints" :depends-on ("_package"))
  ))