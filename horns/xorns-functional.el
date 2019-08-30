;;; xorns-functional.el --- Advanced functional programming stuffs

;; Copyright (c) Merchise Autrement [~º/~]

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


;;; Code:

(eval-when-compile
  ; needed to compile when `(package-initialize)' is not called in `init.el'
  (require 'package)
  (require 'use-package))

(use-package proof-general
 :defer t
 :ensure t)

(provide 'xorns-functional)
;;; xorns-functional.el ends here