#-----------------------------------------------------
# It's worth reading:
#   http://hayne.net/MacDev/Notes/unixFAQ.html
# The OSX profile load sequence is:
#   /etc/profile THEN
#   ~/.bash_profile OR ~/.bash_login OR ~/.profile
# When a "non-login shell" starts up, it reads the file:
#   /etc/bashrc THEN ~/.bashrc
# So, remote .profile, create .bash_profile, and symlink .bashrc to .bash_profile

# NOTE: homebrew's /usr/local/bin should probably be first in the path
# 	so add that to /etc/paths as the first line. It's better system-wide
#   than adding it into this bash-profile
#--------------------------------------------------------------------

# Editors for SCMs and such
export SVN_EDITOR="/usr/bin/vim"
export EDITOR=/usr/bin/vim

bash_folder="$HOME"
[ -e "$HOME/.bash_files/" ] && bash_folder="$HOME/.bash_files"

if [ -d "$HOME/bin" ];then
    PATH=$PATH:$HOME/bin # Add user's executables into path
fi

for f in "$bash_folder"/.bash_aliases* \
         "$bash_folder"/.ps1 \
         "$bash_folder"/.aws_config; do
    # Ignore VIM files
    if [[ $f =~ \.swo$|\.swp$ ]];then
        continue;
    fi
    [ -e $f ] && echo "Sourcing alias file $f" && source "$f"
done

