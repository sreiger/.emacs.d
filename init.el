;;; init.el --- GNU Emacs Configuration


;; Copyright (C) 2019 Shaun Reiger

;; Author: Shaun Reiger <reigers@mymacewan.ca>
;; Created: February 2, 2019




;;; Commentary:

;; Following lines build the configuration code out of the config.el file.

;;; Code:


;; Make startup faster by reducing the frequency of garbage
;; collection.

(setq gc-cons-threshold (* 50 1000 1000))


(require 'package)
(package-initialize)

(if (file-exists-p (expand-file-name "config.el" user-emacs-directory))
  (load-file (expand-file-name "config.el" user-emacs-directory))
  (org-babel-load-file (expand-file-name "config.org" user-emacs-directory)))


;; Make gc pause faster by decreasing the threshold.
(setq gc-cons-threshold (* 2 1000 1000))


;;; init.el ends here
