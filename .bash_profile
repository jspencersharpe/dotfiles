txtblk='\[\e[0;30m\]' # Black
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
txtrst='\[\e[0m\]'    # Text Reset

export EDITOR=vim
export SHELL=/bin/bash
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias         ls='ls'
alias       la='ls -latr'
alias          l='ls -a'
alias         ll='ls -lahp'
alias          b='cd ..'
alias          c='clear'
alias       code='cd ~/dev'
alias       vulcan='cd ~/dev/scc-api'
alias       spartax='cd ~/dev/scc-website'
alias       xandar='cd ~/dev/Xandar'
alias       gallifrey='cd ~/dev/gallifrey'
alias       hoth='cd ~/dev/hoth'

branch()
{
  git branch 2> /dev/null | awk '/\*/ {print "#" $2;}'
}

status()
{
  git status --porcelain 2> /dev/null | wc | awk '{if($1 > 0)print"+";}'
}
FLAKE8=/usr/local/bin/flake8
PATH="/usr/local/Cellar/python3/3.4.3/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/Cellar/postgresql/9.4.1/bin:$PATH:FLAKE8"

export PATH
export WORKON_HOME=~/.virtualenvs

source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/bin/virtualenvwrapper.sh

# Add from SCC Setup process
#export WORKON_HOME=~/.virtualenvs
#source /usr/local/etc/bash_completion.d/git-completion.bash
#source /usr/local/etc/bash_completion.d/git-prompt.sh
#source /usr/local/bin/virtualenvwrapper.sh

#hub alias
eval "$(hub alias -s)"

alias syncdb="./manage.py syncdb"
alias pss='python -m SimpleHTTPServer'

alias editprofile='atom ~/.bash_profile'
alias editbashrc='atom ~/.bashrc'
alias i="source ~/.bash_profile"

alias gitconfig="atom ~/.gitconfig"
alias gitconfigapi="atom ~/dev/scc-api/.git/config"
alias gitconfigweb="atom ~/dev/scc-website/.git/config"
alias gst="git status"

alias updatedevelop="git checkout develop && rebase && git push origin develop"
alias updateremotes="git remote update --prune"
alias updategit="updateremotes"
alias rebase="updateremotes && git rebase -i upstream/develop"
alias goscc='cd ~/dev/scc-api/scc && workon scc'
alias godev='git checkout develop'
alias gitlatest='updateremotes && git pull'
alias sourceprofile='source ~/.bash_profile'
alias pyrunner='python manage.py pyrunner'

alias startserver="python manage.py runserver"
alias pmr="./manage.py runserver"
alias pms="./manage.py shell"
alias pmm="./manage.py migrate"
alias pmt="./manage.py test $1 --settings=scc.host_settings.test"

alias make_migration="./manage.py makemigrations $1"
alias data_migration="./manage.py makemigrations --empty $1"
alias initial_migration="./manage.py makemigrations --initial $1"
alias dumpdata_initial="./manage.py dumpdata $1 --natural-foreign --indent=4"
alias load_initial_data="./manage.py loaddata 0001_initial"
alias syncdb="./manage.py syncdb"
alias syncdb_initial="syncdb && load_initial_data && ./manage.py createsuperuser"

alias coverage="coverage run --source='.' manage.py test --settings=scc.host_settings.test"
alias coverage_report="coverage report --omit='scc/host_settings/*','scc/wsgi'"
alias mkvirtualenv="mkvirtualenv --no-site-packages -p $(which python3)"
alias install_requirements="workon scc && pushd ~/dev/scc-api/ && pip install -r requirements.txt && popd"
alias build="ssh -i ~/.ssh/buildserver-spencer.pem dave@ci.smilecareclub.com"

alias pymigrate='python manage.py migrate'
alias morning!='cd;
                osascript ~/Desktop/Amber.scpt;
                cd;
                bash ~/personal/bash/scripts/chrome.sh;
                bash ~/personal/bash/scripts/apps.sh;
                echo "brew update..."
                brew update;
                cd ~/dev/scc-api/smilecheck;
                git checkout develop && rebase && git push origin develop;'
alias browse='bash ~/personal/bash/scripts/browse.sh;'
alias budget='bash ~/personal/bash/scripts/budget.sh;'
alias tax='bash ~/personal/bash/scripts/tax.sh;'

export NVM_DIR="/Users/spencer/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"‚ # This loads nvm

export PS1="$txtcyn\u$txtred@$txtcyn\h $txtred\w $txtylw\$(status)$txtgrn\$(branch)$txtcyn:$txtrst \w $\n"
