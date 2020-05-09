# Remember all bash history forever
HISTTIMEFORMAT='%F %T '
HISTFILESIZE=
HISTSIZE=
HISTCONTROL=ignoredups
# ignore trivial one and two character commands
HISTIGNORE='history*'
# append to history, don't overwrite it
shopt -s histappend
# attempt to save all lines of a multiple-line command in the same history entry
shopt -s cmdhist
# save multi-line commands to the history with embedded newlines
shopt -s lithist
# Immediately save history
PROMPT_COMMAND='history -a'
