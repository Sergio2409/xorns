;;; xorns-git.el --- Integrate Emacs with GIT using `magit'

;; Copyright (c) Merchise Autrement [~º/~]

;; This file is NOT part of GNU Emacs but I'd like it. ;)

;;; Commentary:

;; Configure all GIT preferences using `magit'.

;; Enjoy!


;;; Code:

(require 'xorns-text)

(require 'use-package)
(require 'use-package-chords)
(require 'xorns-packages)


(>>=ensure-packages magit)

(use-package magit
  :bind
  (("C-x g" . magit-status)
   ("C-c g c" . magit-clone)
   ("C-c g s" . magit-status)
   ("C-c g b" . magit-blame)
   ("C-c g l" . magit-log-buffer-file)
   ("C-c g p" . magit-pull))
  :chords
  ("vc" . magit-status)
  :hook
  ((after-save . magit-after-save-refresh-status)
   (git-commit-mode . >>=tex-mode-setup))
  :config
  (put 'magit-clean 'disabled nil))


(provide 'xorns-git)
;;; xorns-git.el ends here
