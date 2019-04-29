export PATH=/opt/local/bin:/opt/local/sbin:$PATH



alias cddoc="cd ~/Documents && ls -lah"
alias cddwn="cd ~/Downloads && ls -lah"
alias cdes="cd ~/Desktop && ls -lah"
alias cdppr="cd ~/Documents/papers/working-papers && ls -lah"
alias cdds="cd ~/Documents/phd/dissertation/ && ls -lah"
alias cdcv="cd ~/Documents/my-docs/curriculum-vitae && ls -lah"
alias gc="git commit"
alias gp="git push"
alias gpl="git pulla"
alias gs="git status"
alias gcl="git clone"
alias gad="git add"

alias ls="ls -G"

cdl() { cd "$1"; ls -lh ; }

alias cdl="cdl "

export your_private_key='~/.ssh/id_rsa.pub'


## from Magnus Boye git repo 
# enable color support of ls and also add handy aliases
#if [ -x /usr/bin/dircolors ]; then
#    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#    alias ls='ls --color=auto'
#    #alias dir='dir --color=auto'
#    #alias vdir='vdir --color=auto'
#
#    alias grep='grep --color=auto'
#    alias fgrep='fgrep --color=auto'
#    alias egrep='egrep --color=auto'
#fi

# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'
alias up='cd ..'
alias desk='cd ~/Desktop'

#alias ls='(du -sh ./*; ls -alhF)'
# my program shortcuts

alias py='python'
alias py3='python3' 

#move file to trash
trash() { mv "$1" $HOME/.Trash/ }
alias trash="trash"


# Alias for making a "Super cd"
#alias cd="cd"
#
#_scd_completion() {
#    mapfile -t COMPREPLY < <(ls -d */ | grep "${COMP_WORDS[COMP_CWORD]}")
#    #readarray -t COMPREPLY < <(ls -d */ | grep "${COMP_WORDS[COMP_CWORD]}")
#}
#complete -F _scd_completion cd
