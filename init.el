(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(require 'multiple-cursors)

(require 'region-bindings-mode)
(region-bindings-mode-enable)

(define-key region-bindings-mode-map "a" 'mc/mark-all-like-this)
(define-key region-bindings-mode-map "p" 'mc/mark-previous-like-this)
(define-key region-bindings-mode-map "n" 'mc/mark-next-like-this)
(define-key region-bindings-mode-map "u" 'mc/unmark-next-like-this)
(define-key region-bindings-mode-map "U" 'mc/unmark-previous-like-this)
(define-key region-bindings-mode-map "s" 'mc/skip-to-next-like-this)
(define-key region-bindings-mode-map "S" 'mc/skip-to-previous-like-this)
(define-key region-bindings-mode-map ";" 'multiple-cursors-mode)

(setq make-backup-files nil)

