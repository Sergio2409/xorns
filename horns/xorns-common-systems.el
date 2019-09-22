;;; xorns-common-systems.el --- Xorns Configuration for Base System

;; Copyright (c) Merchise Autrement [~º/~]

;; Author: Medardo Antonio Rodriguez <med@merchise.org>

;; This file is not part of GNU Emacs.

;;; Commentary:

;; It's installed just by calling `(require 'xorns-packages)' in the
;; initialization process, which is done automatically.
;;
;; Pending tasks:
;; - See alternatives for `make-backup-files' in:
;;   - https://www.emacswiki.org/emacs/Auto Save
;;   - https://www.emacswiki.org/emacs/BackupFiles


;;; Code:

(require 'use-package)
(require 'use-package-chords)
(require 'xorns-tools)


(when (not (bound-and-true-p >>=standalone-startup))
  ;; Discover more of Emacs. See http://t.co/IwZnrqQBRO
  (require 'discover nil 'noerror)            ;
  (when (functionp 'global-discover-mode)
    (global-discover-mode))
  ;; Main old modules
  (use-package xorns-buffers)
  (use-package xorns-dired)
  (use-package xorns-simple)
  (use-package xorns-term)
  (use-package xorns-fci)
  (use-package xorns-prog)        ;; This requires `xorns-text'
  (use-package xorns-git)
  (use-package xorns-project)
  (use-package xorns-org)
  (use-package xorns-xml)
  ;; Previously in xorns-extra
  (use-package xorns-mail)
  (use-package xorns-gud)
  )


(provide 'xorns-common-systems)
;;; xorns-common-systems.el ends here