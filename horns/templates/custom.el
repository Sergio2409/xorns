;;; Xorns file for local user configurations -*- mode: emacs-lisp -*-

;;; Code:

(defun >>=settings/init ()
  "Configuration code for user-settings.
This function is called at the very beginning of the startup process.  It
should only modify setting-variables (those prefixed with '>>=|') when their
default values are not suitable for your configuration."
  (setq-default
    ;; >>=|default-font '(:size 12.0 :weight normal :width normal)
    ;; >>=|make-backup-files t
    ;; >>=|user-mail-address-template "${USER}@gmail.com"
    ;; >>=|show-title-in-header-line t
    ;; >>=|enable-server t
    ;; >>=|key-chord-delay-level 3
    ))


(defun >>=building-blocks/configuration ()
  "Configuration code for building-blocks customization.
This function should only modify variables to customize how building-blocks
are loaded (those prefixed with '>>=+') when their default values are not
suitable for your configuration."
  (setq-default
    ;; >>=|base/extra-packages '(autorevert recentf saveplace gcmh)
    ))


(defun >>=window-manager/init ()
  "Configuration executed only when using Emacs as a Window Manager."
  ;;; For example:
  (setq exwm-input-simulation-keys
    '(
       ;; movement
       ([?\C-b] . [left])
       ([?\M-b] . [C-left])
       ([?\C-f] . [right])
       ([?\M-f] . [C-right])
       ([?\C-p] . [up])
       ([?\C-n] . [down])
       ([?\C-a] . [home])
       ([?\C-e] . [end])
       ([?\M-v] . [prior])
       ([?\C-v] . [next])
       ([?\C-d] . [delete])
       ([?\C-k] . [S-end delete])
       ;; cut/paste.
       ([?\M-w] . [?\C-c])
       ([?\C-y] . [?\C-v])
       ;; search
       ([?\C-s] . [?\C-f])))
  )


(defun >>=user-code ()
  "User-code executed after initialization process."
  )



;; Do not write anything past this comment.  This is where Emacs will
;; auto-generate custom variable definitions.
