#Number of commands in memory history
export HISTSIZE=50000
#Number of commands in the history file
export HISTFILESIZE=100000
#time stamp to 2019-09-20 13:32:11 
export HISTTIMEFORMAT="%F %T "
#Remove duplicates and ignore them
export HISTCONTROL=ignoredups:erasedups
#Don't log boring commands
export HISTIGNORE='ls:bg:fg:history'
#Concatenate multiline commands into a single line
shopt -s cmdhist
#append to the history file instead of overwriting
shopt -s histappend
# Append the history file, clear the buffer and reread the file after every command
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r;"
