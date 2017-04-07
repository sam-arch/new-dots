############################################### 
##	Lines configured by zsh-newuser-install  ##
###############################################

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify 
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/murph/.zshrc'

autoload -Uz compinit
compinit
autoload -U colors
colors
# End of lines added by compinstall
####################
# by tole
#####################
#
alias pacman='sudo pacman'
alias wifi-menu='sudo wifi-menu'
alias ls='ls -FGh --color'
alias l='ls -l'
alias la='l -a'
alias grep='grep --color=always'
alias mocp='mocp -T ~/.moc/themes/darken'
alias vi="vim"
alias ncmpc="ncmpc -c"
alias me="me -n"
#alias go="/usr/local/go/bin/go"
alias gofmt="/usr/local/go/bin/gofmt"
alias rm="rm -i"
alias feh="feh --bg-scale"
######## this adds color to man pages, awesome!
man() {
    env \
LESS_TERMCAP_mb=$(printf "\e[1;31m") \
LESS_TERMCAP_md=$(printf "\e[1;31m") \
LESS_TERMCAP_me=$(printf "\e[0m") \
LESS_TERMCAP_se=$(printf "\e[0m") \
LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
LESS_TERMCAP_ue=$(printf "\e[0m") \
LESS_TERMCAP_us=$(printf "\e[1;32m") \
															man "$@"
}
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
#export PATH=$PATH:$GOPATH/bin
###### Prompts...i suck at making these eh!

autoload promptinit
promptinit
PATH=$PATH:/home/murph/bin
PATH=$PATH:/home/murph/.config/panel
export LSCOLORS=cxfxcxdxcxegedabagacad ##unix anyone?
#PS1="%~ %{%(#~$fg[red]~$fg[blue])%}%#%{$fg[green]%} "
if [[ $UID == 0 || $EUID == 0 ]]; then
  PS1="%{$fg[red]%} %~ #%{$reset_color%} "
else
  PS1="%{$fg[green]%} %~ %%%{$reset_color%} "
fi
