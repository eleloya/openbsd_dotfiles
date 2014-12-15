# $OpenBSD: dot.profile,v 1.4 2005/02/16 06:56:57 matthieu Exp $
#
# sh/ksh initialization


# Enviroment Variables
PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.
export PATH HOME TERM
export PKG_PATH="ftp://ftp.openbsd.org/pub/OpenBSD/5.6/packages/amd64/"
export TERM=xterm-256color
export EDITOR="vim"

# Custom Functions
git_branch_name(){
val=`git branch 2>/dev/null | grep '^*' | colrm 1 2`
echo "$val"
}

# Color Configuration
YELLOW="[0;33m"
COLOR1="[01;32m" #green
PINK="[01;35m" #pink
COLOR2="[0;36m" #blue
NOCOLOR="[0m"
export PS1="\\[$PINK\u$COLOR1@\h$COLOR2 \w$YELLOW "'$(git_branch_name)'" $NOCOLOR "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# ALIASES
alias battery='apm'
alias ls='colorls -G'
alias cwmrc="vim ~/.cwmrc"

elcowork(){
  echo "$COLOR1 [+] $YELLOW Configurando iwn0 $NOCOLOR"
  sudo ifconfig iwn0 nwid "El Cowork Guest" wpakey huskysea079
  sudo ifconfig iwn0
  echo "$COLOR1 [+] $YELLOW Obteniendo IP $NOCOLOR"
  sudo dhclient iwn0
}
