
(cl:in-package :asdf)

(defsystem "turtle_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "kf" :depends-on ("_package_kf"))
    (:file "_package_kf" :depends-on ("_package"))
  ))