; Header
(load-file "~/.emacs.d/std_comment.el")

; Masque la barre de menu ainsi que la scroll barre
(menu-bar-mode -1)

; Affiche les couples de : ( { [
(show-paren-mode)

; Affiche le numéro de colone
(column-number-mode t)

; Affiche le numéro de ligne
(global-linum-mode )
(setq linum-format "%d")
(setq linum-format "%4d \u2502 ")

; Surligne en jaune les lignes de plus de 80 CARACTERES (Uniquement en C)
(add-hook 'c-mode-hook '(lambda () (highlight-lines-matching-regexp ".\\{81\\}" 'hi-yellow)))

; Surligne en rouge les espaces en fin de ligne
(setq-default show-trailing-whitespace t)

; Supprime automatiquement les espaces en fin de ligne lors de la fermeture (Uniquement en C)
(add-hook 'c-mode-hook '(lambda () (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))
