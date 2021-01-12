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
;; features are available to you in your posts, as well as the rest of elisp :)
;;
;; The structure is not opinionated, thus you are required to define a structure
;; for your site in order for it to build. In that light, a default structure is
;; provided but it is recommended to adapt it to your own needs.

;;; Code:

(defgroup lispov nil
  "elisp-driven, org-based static site generator"
  :group 'tools
  :group 'wp
  :link '(url-link :tag "GitHub" "https://github.com/mrleedev/lispov")
  :link '(emacs-commentary-link :tag "Commentary" "lispov"))

(defcustom lispov-cache-directory "_cache"
  "The cached site build will be stored in this directory. 

It is recommended that when you change this setting, you ignore the directory in your VCS.
Set to `nil' to disable caching entirely."
  :group 'lispov
  :type 'string)


(defcustom lispov-output-directory "_site"
  "The output of the build will be stored in this directory.

This supports TRAMP-style directory strings, if you wish to deploy directly to a remote server."
  :group 'lispov
  :type 'string)

;;;###autoload
(defun lispov/defsite (name)
  "Define a static site with the given name."
)

;;;###autoload
(defun lispov/defroute (route)
  "Define a route matching the given directory string/glob, a route transform, and a file transform, and site.

Files found within this directory will become part of the final build, subject to any
transformations supplied. A number of in-built transformers are available:

  Route transforms:
    `\'same': Explicitly state that the matched directory structure on disk will be the same structure in the build.
      For example, if the route is `css/*' on disk, then the output will contain a matching `css' folder.

  File transforms:
    `\'copy-files':  Matching files are copied verbatim into the build.

If no route transform is supplied, it is assumed that the same directory structure that is matched will be
copied into the build."
  )

;;;###autoload
(defun lispov/defcontent (route)
  "Dynamically generate a file at the given route, for the given site.

Use this to generate, for example, custom index pages, RSS feeds, ATOM feeds, and so on."
  )
  

(provide 'lispov)
;;; lispov.el ends here
