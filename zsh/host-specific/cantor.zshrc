bindkey -e
# Sane editing keybinds
bindkey "\e[3~" delete-char 
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[Od" backward-word
bindkey "^[Oc" forward-word
bindkey "^?" backward-kill-word
bindkey  "^[[3^" kill-word
bindkey "^i" expand-or-complete-prefix