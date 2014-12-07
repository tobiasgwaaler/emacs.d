(package-initialize)

;; general
(exec-path-from-shell-initialize) ;; use PATH from shell
(load-theme 'wombat)
(cua-mode t)
(tool-bar-mode -1) ;; hide toolbar on osx
(ido-vertical-mode 1) ;; list smex-stuff
(global-linum-mode t)
(setq inhibit-startup-screen +1) ;; no startup-screen
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(set-default-font "Monaco 14")
(show-paren-mode)
(setq mac-option-modifier nil) ;; use ESC as Meta, reserve alt-key for special characters such as [], {}  etc.

;; Sr Speedbar
(add-to-list 'load-path "~/.emacs.d/manual/")
(require 'sr-speedbar)
(global-set-key (kbd "s-o") 'sr-speedbar-toggle)
(setq sr-speedbar-right-side nil)

;; Enable auto-saving to the current file
(setq auto-save-visited-file-name t)

;; ghc-mod
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)

;; company-mode
(add-hook 'after-init-hook 'global-company-mode)

;; company-ghc
(add-hook 'haskell-mode-hook 
	  (lambda () 
	    (ghc-init)
	    (add-to-list 'company-backends 'company-ghc)
	    (turn-on-haskell-indent)
	    (setq company-ghc-show-info t) ;; show type info
	    (setq ghc-debug t)
	    )
	  )

;; keybindings
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "<end>") 'end-of-line)
(global-set-key (kbd "<home>") 'beginning-of-line)
(global-set-key (kbd "C-<tab>") 'next-buffer)
(global-set-key (kbd "C-S-<tab>") 'previous-buffer)
(global-set-key (kbd "s-<right>") 'end-of-line)
(global-set-key (kbd "s-<left>") 'beginning-of-line)
(global-set-key (kbd "s-<up>") (lambda () (interactive) (previous-line 5)))
(global-set-key (kbd "s-<down>") (lambda () (interactive) (next-line 5)))

