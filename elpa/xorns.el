;;; xorns --- Execute all Merchise preferred initialization

;; Copyright (C) 2014 Merchise Autrement

;; Author: Medardo Rodriguez <med@merchise.org>
;; URL: http://dev.merchise.org/emacs/xorns
;; Keywords: initialization, merchise, convenience
;; Version: 20140316.1200

;; This file is NOT part of GNU Emacs but I'd like it. ;)

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>
;; or type `C-h C-c' in Emacs.

;;; Commentary:

;; To use `xorns', and automatically include all its basic features,
;; just configure one of the standard initialization files (`~/.emacs'
;; or `~/.emacs.d/init.el') with the following body::
;;
;;     (package-initialize)
;;     (require 'xorns)
;;
;; You may configure how much does xorns mess with your Emacs configuration.
;; By requiring `xorns' (or any `xorns' package) enclosed with a bind to
;; `xorns-config-level' to upper levels::
;;
;;     (let ((xorns-config-level 'maximum))
;;       (require 'xorns))
;;
;; There are some extra features that are not included in basic
;; `xorns'; if required, configure in the selected initialization
;; file::
;;
;;     (require 'xorns-extra)

;; Enjoy!


;;; Code:


;; Basic initialization
(require 'xorns-startup)
(require 'xorns-buffers)
(require 'xorns-dired)
(require 'xorns-simple)
(require 'xorns-term)
(require 'xorns-prog)        ;; This requires `xorns-text'
(require 'xorns-project)
(require 'xorns-git)

;; Configure preferred package repositories
(require 'xorns-package)




(defun xorns-manage-user-custom-files (&optional force)
  "Configure and load per-user custom initialization.

This is useful when a GIT repository for `~/.emacs.d/' folder is shared to be
used for several team members in order to each one could have his/her own
`custom-file' using as name the pattern `custom-${USER}.el'.

If `custom-file' variable is configured when this function runs, a proper
warning is issued and no file is configured unless optional argument FORCE
is given.

Also check for file with name `init-${USER}.el' and if exists, is loaded."
  (let* ((configured custom-file)
	 (do-config (or (not configured) force)))
    (if configured
      (message
	"Warning: A `custom-file' \"%s\" is already configured!"
	custom-file))
    (if do-config
      (let ((file-name
	       (xorns-locate-emacs-file "custom-${USER}.el" "custom.el")))
      (setq custom-file file-name)
      (if (file-exists-p custom-file)
	(progn
	  (load custom-file 'noerror)
	  (message "Loading `custom-file': %s" file-name))
	;else
	(message "Using new `custom-file': %s" file-name)))))
  (let ((user-init-file
	  (xorns-locate-emacs-file "init-${USER}.el" nil)))
    (if user-init-file
      (load user-init-file 'noerror))))


(when (xorns-configure-p 'basic)
  (xorns-manage-user-custom-files))


(provide 'xorns)
;;; xorns.el ends here
