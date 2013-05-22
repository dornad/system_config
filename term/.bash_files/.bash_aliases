# Bash aliases should be in this file

alias epochdate='date -j -f "%a %b %d %T %Z %Y" "`date`" "+%s"'
alias ber='bundle exec ruby'

alias rename="ls $3 | awk '{print(\"mv \"$1\" \"$1)}' | sed 's/$1/$2/2'"
alias ls="ls -alh"
alias git-log="git log --stat"
alias git-merge="git merge --no-ff"

# Host aliases

# Functions
function reload() {
    # Reload should also re-apply all paths from /etc/paths.d
    if [ -x /usr/libexec/path_helper ]; then
        PATH=""
        eval $(/usr/libexec/path_helper -s)
    fi
    source $HOME/.bash_profile
}

function lsinfo() {
    echo "Remember to escape any wildcards. Eg. lsinfo ~/Desktop/\*"
    stat -f "(%HT%SY)---%A---%N" $1 | awk -F '\-\-\-' '{ printf "%-15s %-5d %s\n", $1, $2, $3 }'
}

