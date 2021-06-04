;; initialize package system
(package-initialize)
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;; use left command as meta key in macos
(if (string-equal system-type "darwin")
  (progn (setq mac-option-modifier 'super)
         (setq mac-command-modifier 'meta)))

;; initialize slime 
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/bin/sbcl")
