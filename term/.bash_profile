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
if [ -e "$HOME/.bash_files/" ]; then
  bash_folder="$HOME/.bash_files"
fi

# General aliases
source "$bash_folder"/.bash_aliases

# Private aliases that don't need to be externalized for git
source "$bash_folder"/.bash_aliases_mine

# Language-specific configurations
source "$bash_folder"/.bash_aliases_java
source "$bash_folder"/.bash_aliases_rb
source "$bash_folder"/.bash_aliases_py

# Terminal prefs
source "$bash_folder"/.ps1

# App-specific stuff
# source $bash_folder/.aws_config

