
;;;; ロード関連 ================================================================
;; 最小構成
(load (expand-file-name "~/.emacs.d/dot_emacs/.emacs-kernel"))
;; 一般構成
(load (expand-file-name "~/.emacs.d/dot_emacs/.emacs-common"))

;; 新規追加
(load (expand-file-name "~/.emacs.d/dot_emacs/.emacs-new"))

;; 自宅用
;(load (expand-file-name "~/.emacs.d/dot_emacs/.emacs-home"))

;; lisp-modeで設定ファイルを開くように設定
(setq auto-mode-alist (cons '("\\.emacs-kernel$" . lisp-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.emacs-common$" . lisp-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.emacs-home$" . lisp-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.emacs-company$" . lisp-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.emacs-new$" . lisp-mode) auto-mode-alist))

;;; 起動時に.emacs.elファイルをバッファへ読み込み
(find-file "~/.emacs.el")
(find-file "~/.emacs.d/dot_emacs/.emacs-kernel")
(find-file "~/.emacs.d/dot_emacs/.emacs-common")
(find-file "~/.emacs.d/dot_emacs/.emacs-new")

;; クリップボード
; 他のソフトでコピーした文字列をyankできるように設定
(setq x-select-enable-clipboard t)

;; 保存しないファイルの正規表現
;; (setq desktop-files-not-to-save "\\(^/[^/:]*:\\|\\.diary$\\)")
;; (autoload 'desktop-save "desktop" nil t)
;; (autoload 'desktop-clear "desktop" nil t)
;; (autoload 'desktop-load-default "desktop" nil t)
;; (autoload 'desktop-remove "desktop" nil t)
;(desktop-load-default)
;(desktop-read)
;(desktop-save-mode 1)

;; (when (eq window-system 'mac)
;;   (add-hook 'window-setup-hook
;;             (lambda ()
;; ;;              (setq mac-autohide-menubar-on-maximize t)
;;               (set-frame-parameter nil 'fullscreen 'fullboth)
;;               )))

;;;; キーバインド ==============================================================
(global-set-key [f5] 'text-translator-all-by-auto-selection)
(global-set-key (kbd "C-;") 'rgrep)

;;; bm.el
(global-set-key (kbd "M-SPC") 'bm-toggle)
(global-set-key (kbd "M-[") 'bm-previous)
(global-set-key (kbd "M-]") 'bm-next)
