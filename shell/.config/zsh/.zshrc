[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc"

bindkey -v '^?' backward-delete-char
export KEYTIMEOUT=1

# History configuration
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Prompt
autoload -U colors && colors
PS1="%B%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[cyan]%}%M%{$reset_color%} %~ $%b "

echo -e "\n\e[33m$(fortune -s)\n"
