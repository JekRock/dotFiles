autoload bashcompinit
bashcompinit

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jek/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PATH=$PATH:/usr/local/go/bin
PATH=$PATH:~/go/bin
PATH=$PATH:~/bin

set -o histignorespace

alias ls="exa -lG"

export GPG_TTY=$(tty)

eval "$(zoxide init zsh --cmd j)"
eval "$(starship init zsh)"

export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"
bindkey '^r' _atuin_search_widget

# fnm
export PATH=/home/jek/.fnm:$PATH
eval "`fnm env --use-on-cd`"

source "$HOME/.sdkman/bin/sdkman-init.sh"

