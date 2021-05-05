red='\e[0;31m'
RED='\e[1;31m'
blue='\e[0;34m'
BLUE='\e[1;34m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
MAGENTA='\e[1;95m'
YELLOW='\e[1;33m'
NC='\e[0m'
WHITE='\e[1;37m'
PURPLE='\e[1;35m'
BROWN='\e[1;33m'
GRAY='\e[1;30m'
PINK='\e[1;38;5;206m'
LIGHT_GRAY='\e[1;38;5;249m'
 
build_prompt() {
  PS1="\n\[${YELLOW}\]\u \[${CYAN}\]\w"
  if [ "$CONDA_DEFAULT_ENV" != "base" ]; then
    PS1+="\[${LIGHT_GRAY}\] <\$(basename \$CONDA_DEFAULT_ENV)>"
  fi
  PS1+="\[${RED}\] \$(git branch 2>/dev/null | grep '^*' | colrm 1 2)"
  PS1+="\n \[${MAGENTA}\]→ \[${NC}\]"
}
PROMPT_COMMAND=build_prompt
 
source ~/.iterm2_shell_integration.bash
 
alias ..='cd ..'
alias ...='cd ../..'
 
alias ls='ls -hGFp'
alias la='ls -a'
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
 
alias cdprojects='cd ~/projects'
 
alias s="git"
alias ss="git status"
alias sss="git stash"
alias sl="git log"
alias sc="git commit -m"
alias scd="git checkout"
alias spu="git push origin head"
alias spl="git pull origin master"
alias sr="git rebase master"
alias sg="git grep"
alias sls="git branch"
alias sd="git diff master"
alias sad="git add"
alias saa="git add -A"
alias sn="git checkout -b"
 
alias t="tmux"
alias tls="tmux list-sessions"
alias td="tmux kill-session -t"
alias tda="killall tmux"
alias tcd="tmux attach -t"
alias tn="tmux new-session -s"
alias python="python3"
alias condan="conda create --name"
alias condacd="conda activate"
alias condad="conda env remove --name"
alias condals="conda env list"
 
alias f="find . -name"
alias vimrc="vim ~/.vimrc"
alias fucking="sudo"
alias clear="clear && printf '\e[3J'"
alias sourceb="source ~/.bash_profile"
#bind -x '"\C-t": clear && printf "\ec"'
bind -x '"\C-t": reset'
 
alias del="rmtrash"
alias server="ssh 104.131.121.192"
 
#export TERM="xterm-256color"
# 
#[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
#eval "$(rbenv init -)"
# 
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#. $(brew --prefix)/etc/bash_completion
#fi
# 
## Setting PATH for Python 3.7
## The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
#export PATH
# 
#export PATH="$HOME/.cargo/bin:$PATH"
#export PATH=$PATH:~/bin
# 
#. /Users/lucaspauker/torch/install/bin/torch-activate
# 
# 
## The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/lucaspauker/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/lucaspauker/Downloads/google-cloud-sdk/path.bash.inc'; fi
# 
## The next line enables shell command completion for gcloud.
#if [ -f '/Users/lucaspauker/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/lucaspauker/Downloads/google-cloud-sdk/completion.bash.inc'; fi
# 
## >>> conda initialize >>>
## !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/lucaspauker/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/lucaspauker/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/lucaspauker/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/lucaspauker/anaconda3/bin:$PATH"
    fi
fi
#unset __conda_setup
## <<< conda initialize <<<
 
export PATH="/Users/lucaspauker/anaconda3/bin:$PATH"
 
#test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
