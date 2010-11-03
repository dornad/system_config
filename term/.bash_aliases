# Bash aliases should be in this file

alias reload='source ~/.bash_profile'

# Mysql-related. These only work if mysql is installed by brew
alias mysqlstart='/usr/local/Cellar/mysql/5.1.46/share/mysql/mysql.server start'
alias mysqlstop='/usr/local/Cellar/mysql/5.1.46/share/mysql/mysql.server stop'

alias startpf='sudo launchctl start org.postfix.master'
alias stopfp='sudo launchctl stop org.postfix.master'

# alias drush='cd ~/Sites/d6 && php ~/Sites/d6/sites/all/modules/drush/drush.php'
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

