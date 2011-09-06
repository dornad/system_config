#-----------------------------------------------------
# It's worth reading:
#   http://hayne.net/MacDev/Notes/unixFAQ.html
# The OSX profile load sequence is:
#   /etc/profile THEN
#   ~/.bash_profile OR ~/.bash_login OR ~/.profile
# When a "non-login shell" starts up, it reads the file:
#   /etc/bashrc THEN ~/.bashrc
# So, remote .profile, create .bash_profile, and symlink .bashrc to .bash_profile
#--------------------------------------------------------------------

# If brew is installed, may need this for non-interactive shells
if [[ "$PATH" == *usr/local/bin* ]];then
    echo "/usr/local/bin is already in path. Ignoring this directive"
else
    export PATH=$PATH:"/usr/local/bin"
fi


# Editors for SCMs and such
export SVN_EDITOR="/usr/bin/vim"
export EDITOR=/usr/bin/vim

bash_folder="$HOME"
[ -e "$HOME/.bash_files/" ] && bash_folder="$HOME/.bash_files"

for f in "$bash_folder"/.bash_aliases* \
         "$bash_folder"/.ps1 \
         "$bash_folder"/.aws_config; do
    [ -e $f ] && echo "Sourcing alias file $f" && source "$f"
done

