# Bash aliases should be in this file

alias reload='source ~/.bash_profile'

alias epochdate='date -j -f "%a %b %d %T %Z %Y" "`date`" "+%s"'
alias ber='bundle exec ruby'

alias rename="ls $3 | awk '{print(\"mv \"$1\" \"$1)}' | sed 's/$1/$2/2'"
alias ls="ls -alh"
alias git-log="git log --stat"
alias git-merge="git merge --no-ff"

# Host aliases

# Functions
function lsinfo() {
    echo "Remember to escape any wildcards. Eg. lsinfo ~/Desktop/\*"
    stat -f "(%HT%SY)---%A---%N" $1 | awk -F '\-\-\-' '{ printf "%-15s %-5d %s\n", $1, $2, $3 }'
}

