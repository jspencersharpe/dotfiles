txtblk='\[\e[0;30m\]' # Black
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
txtrst='\[\e[0m\]'    # Text Reset

branch()
{
  git branch 2> /dev/null | awk '/\*/ {print "#" $2;}'
}

status()
{
  git status --porcelain 2> /dev/null | wc | awk '{if($1 > 0)print"+";}'
}
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

alias code='cd ~/dev'
alias sync='cd ~/dev/groupsync'
alias pss='python -m SimpleHTTPServer'
alias editprofile='atom ~/.bash_profile'
alias i="source ~/.bash_profile"

alias gitconfig="atom ~/.gitconfig"
alias gst="git status"

alias rebase="git fetch origin && git rebase origin/master"
alias updatemaster="git checkout master && rebase"
alias startserver="npm start"
alias undocommit="git reset --soft HEAD~"

alias morning!='cd;
                bash ~/personal/productivity/scripts/chrome.sh
                bash ~/personal/productivity/scripts/apps.sh;
                echo "brew update..."
                brew update;
                cd ~/dev'

alias budget='cd; bash ~/personal/productivity/scripts/budget.sh';
alias browse='cd; bash ~/personal/productivity/scripts/browse.sh';

export PS1="$txtcyn\u$txtred@$txtcyn\h $txtred\w $txtylw\$(status)$txtgrn\$(branch)$txtcyn:$txtrst \w $\n"
