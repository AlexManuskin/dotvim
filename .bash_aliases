######################
### --ALIASES-- ######
######################

alias a='alias'
alias h='history'
alias jobs="jobs -l"
alias ll="ls -alF --color"
alias g='grep'
alias gc='grep --color'
alias grc='grep -r --color'
alias z='zgrep'
alias l='less'

# Ranger
alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'
alias r='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'

# Trash
alias rm="echo 'rm is disabled. Use trash instead'"
alias rmi="/bin/rm -I"
alias trash='gvfs-trash'
alias trash-list='ls -ltr /home/"$USER"/.local/share/Trash/files'
function trash-restore() { mv /home/"$USER"/.local/share/Trash/files/"$@" .; }


export PINTOOL=/home/amanusk/Software/pin-3.2-81205-gcc-linux
#export PIN=/home/amanusk/Software/pin-3.2-81205-gcc-linux/pin

#####
#VARS
#####


export DEBFULLNAME="Alex Manuskin"
export DEBEMAIL="alex.manuskin@gmail.com"


PATH=~/.local/bin:$PATH
