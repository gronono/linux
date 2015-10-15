#
# Configuration des alias
#

# ls
alias ls='ls --color -h'
alias ll='ls -l'
alias la='ls -a'
alias lla='ll -a'
alias l='ls'

# human
alias df='df -h'
alias du='du -h'

# rm
alias rm='rm -i'
alias rmtorrent='rm -rf *.torrent'

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cd..='cd ..'

# apt
alias apt-install='apt-get install'
alias apt-search='apt-cache search'
alias apt-update='apt-get update'
alias apt-remove='apt-get purge'
alias apt-upgrade='apt-get upgrade'

# sudo
alias sudo='sudo DISPLAY=$DISPLAY'
alias apt-get='sudo apt-get'
alias reboot='sudo reboot'
alias visu='sudo vi'
alias service='sudo service'
alias updatedb='sudo updatedb'

# /sbin
alias ifconfig='/sbin/ifconfig'

# grep
alias igrep='grep -i'

# uname
alias uname='uname -a'

# history
history() {
  if [ $# == 0 ]; then
      command history
  else
      command history | igrep "$1"
  fi
}

# ps
ps() {
  if [ $# == 0 ]; then
      command ps aux
  else
      command ps aux | igrep "$1"
  fi
}

# extract
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1    ;;
      *.tar.gz)    tar xvzf $1    ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xvf $1     ;;
      *.tbz2)      tar xvjf $1    ;;
      *.tgz)       tar xvzf $1    ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)           echo "don't know how to extract '$1'..." ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}

# change le titre du terminal
set_title() { printf "\e]2;$*\a"; }

# npm install global
alias npm-install='sudo npm install -g'

pathprepend() {
	for ARG in "$@"
	do
		if [ -d "$ARG" ] && [[ ":$PATH:" != *":$ARG:"* ]]; then
			PATH="$ARG${PATH:+":$PATH"}"
		fi
	done
}

