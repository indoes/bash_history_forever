#------------------------------------
# Remember all bash history forever
#------------------------------------
#HISTTIMEFORMAT='%F %T '
HISTFILESIZE=-1
HISTSIZE=-1
HISTCONTROL=ignoredups
HISTFILE=~/.history
# ignore trivial one and two character commands
#HISTIGNORE=?:??
#HISTIGNORE='history*'
# append to history, don't overwrite it
shopt -s histappend
# attempt to save all lines of a multiple-line command in the same history entry
shopt -s cmdhist
# save multi-line commands to the history with embedded newlines
shopt -s lithist
# Immediately save history
#PROMPT_COMMAND='history -a'
#export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"
export PROMPT_COMMAND="history -a; history -c; history -r; ${PROMPT_COMMAND}"
