
(cl:in-package :asdf)

(defsystem "grab-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GrabServer" :depends-on ("_package_GrabServer"))
    (:file "_package_GrabServer" :depends-on ("_package"))
  ))