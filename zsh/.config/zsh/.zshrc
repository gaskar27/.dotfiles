#
autoload -Uz compinit
compinit

# config file

[[ -f ~/.config/zsh/history.zsh ]] && source ~/.config/zsh/history.zsh
[[ -f ~/.config/zsh/keymap.zsh ]] && source ~/.config/zsh/keymap.zsh
[[ -f ~/.config/zsh/aliases.zsh ]] && source ~/.config/zsh/aliases.zsh
[[ -f ~/.config/zsh/bin.zsh ]] && source ~/.config/zsh/bin.zsh
[[ -f ~/.config/zsh/plugins.zsh ]] && source ~/.config/zsh/plugins.zsh
