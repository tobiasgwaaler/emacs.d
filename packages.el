;; This is intended to be run only when installing a new package
;; and not as a part of init.el 

;; run with "emacs --script ~/.emacs.d/packages.el"

(require 'package)
(package-initialize)

(add-to-list 'package-archives 
         '("melpa" . "http://melpa-stable.milkbox.net/packages/"))
(package-refresh-contents)

(package-install 'company)
(package-install 'haskell-mode)
(package-install 'ghc)
(package-install 'company-ghc)
(package-install 'smex)
(package-install 'exec-path-from-shell)
(package-install 'ido)
(package-install 'ido-vertical-mode)
(package-install 'graphviz-dot-mode)
