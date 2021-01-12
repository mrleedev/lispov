;;; lispov.el --- An emacs flavoured substitute for hakyll  -*- lexical-binding: t; -*-

;; Copyright (C) 2021 Lee Meichin <me@mrlee.dev>

;; Author: Lee Meichin <me@mrlee.dev>
;; Keywords: wp, tools

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; This library provides a way to build a customisable static site from a
;; collection of templates and web assets, in a similar way to Hakyll, a
;; Haskell-based static site generator.
;;
;; In place of Pandoc, lispov instead depends upon org-mode, so all org-*
;; features are available to you in your posts.
;;
;; The structure is not opinionated, thus you are required to define a structure
;; for your site in order for it to build. In that light, a default structure is
;; provided but it is recommended to adapt it to your own needs.

;;; Code:



(provide 'lispov)
;;; lispov.el ends here
