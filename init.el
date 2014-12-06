(package-initialize)

;; general
(load-theme 'wombat)
(cua-mode t)
(tool-bar-mode -1) ;; hide toolbar on osx
(ido-vertical-mode 1) ;; list smex-stuff

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
(setq inhibit-startup-screen +1) ;; no startup-screen
