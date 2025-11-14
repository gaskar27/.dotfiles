# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# init zoxide
eval "$(zoxide init --cmd cd zsh)"

# start Starship prompt
eval "$(starship init zsh)"
