#-----------------------------------------------------
# It's worth reading:
#   http://hayne.net/MacDev/Notes/unixFAQ.html
# The OSX profile load sequence is:
#   /etc/profile THEN
#   ~/.bash_profile OR ~/.bash_login OR ~/.profile
# When a "non-login shell" starts up, it reads the file:
#   /etc/bashrc THEN ~/.bashrc
#--------------------------------------------------------------------

# Editors for SCMs and such
export SVN_EDITOR="/usr/bin/vim"
export EDITOR=/usr/bin/vim

# General aliases
source ~/.bash_aliases

# Language-specific configurations
source ~/.bash_aliases_java
source ~/.bash_aliases_rb
source ~/.bash_aliases_py

# Terminal prefs
source ~/.ps1

# Private aliases that don't need to be externalized for git
# source ~/.bash_aliases_mine


# App-specific stuff
# source ~/.aws_config

