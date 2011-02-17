# Define some colors first:
red='\e[0;31m'
RED='\e[1;31m'
blue='\e[0;34m'
BLUE='\e[1;34m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
NC='\e[0m' # No Color

    black='\['`tput sgr0; tput setaf 0`'\]'
    green='\['`tput sgr0; tput setaf 2`'\]'
   yellow='\['`tput sgr0; tput setaf 3`'\]'
  magenta='\['`tput sgr0; tput setaf 5`'\]'
    white='\['`tput sgr0; tput setaf 7`'\]'
   nocolor='\e[0m'

bash_folder="$HOME"
[ -e "$HOME/.bash_files/" ] && bash_folder="$HOME/.bash_files"

[ -e "$bash_folder"/.git-completion.sh ] && source "$bash_folder"/.git-completion.sh

function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function myip() {
  ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2 | xargs
}

export PS1="\n$green\u@\h $blue\w $red\$(__git_ps1 "%s") :$nocolor (\$(myip))\n"

