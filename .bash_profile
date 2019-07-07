# .bash_profile
echo "running .bash_profile"

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

export PATH=$PATH:$HOME/bin

#
# emacs config
#
export EDITOR=/usr/bin/emacs
export CSCOPE_EDITOR=$HOME/bin/emacsclient_cscope

#
# source management
#
alias cscope='cscope -p4 -d'
source ~/.git_utils

# Make prompt pretty
green=$(tput setaf 2)
blue=$(tput setaf 4)
bold=$(tput bold)
red=$(tput setaf 1)
reset=$(tput sgr0)
PS1='[\u@\[$green\]\h\[$reset\]:\w\[$red\]$(__git_ps1)\[$reset\]]$ '

# PS1="[\[\033[32m\]\w]\[\033[0m\]\$(__git_ps1)\n\[\033[1;36m\]\u\[\033[32m\]$ \[\033[0m\]"
# export PS11="[\u@\h \W] $(__git_ps1)"

