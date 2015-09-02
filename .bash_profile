export EDITOR='mvim -f'
alias pss="python -m SimpleHTTPServer"
alias gst="git status"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias update_node="nvm install stable --reinstall-packages-from=stable; npm install npm -g"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
