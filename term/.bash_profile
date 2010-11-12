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

#------ JAVA-related (and everything using Java ---------------------
export JAVA_HOME=/Library/Java/Home

# ROO profile settings for term
export ROO_OPTS="-Droo.bright=true"

# 512m seems a good value to not run out of java heap space
# Headless is necessary for running ant task so they don't get window server errors
export ANT_OPTS="-Xmx512m -Djava.awt.headless=true"

#------- Ruby Related -----------------------------------------------

# Ruby Version Manager (RVM)
if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
  source "$HOME/.rvm/scripts/rvm";
fi

# Following is based on whatever your want
export GEM_HOME=~/.gem/ruby/1.8/

#---------- Python related (to fix some OSX goofiness) --------------
# This one fixes the fact that TickCount() does not respect 64-bit:
# http://stackoverflow.com/questions/3461983/evt-tickcount-not-found-with-python2-6-on-osx-10-6-3
export VERSIONER_PYTHON_PREFER_32_BIT=yes

source ~/.bash_aliases

# Terminal settings and prompt-related scripts
source ~/.ps1

# If there are other things you want, put them into separate config files 
# Examples:
# source ~/.aws_config
# source ~/.bash_private_aliases
# source ~/.my_keys
