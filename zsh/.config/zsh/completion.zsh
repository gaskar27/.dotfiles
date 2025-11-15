autoload -U compinit
compinit

zstyle ':completion:*' menu select

zstyle ':completion:*' special-dirs true

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zstyle ':completion:*:descriptions' format '%B-- %d --%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*' rehash true
zstyle ':completion::complete:*' use-cache true

zstyle ':completion:*' file-sort name
