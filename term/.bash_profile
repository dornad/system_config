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

# Editors for SCMs and such
export SVN_EDITOR="/usr/bin/vim"
export EDITOR=/usr/bin/vim

bash_folder="$HOME"
[ -e "$HOME/.bash_files/" ] && bash_folder="$HOME/.bash_files"

for f in "$bash_folder"/.bash_aliases* \
         "$bash_folder"/.ps1 \
         "$bash_folder"/.aws_config do
    [ -e $f ] && echo "Sourcing alias file $f" && source "$f"
done

