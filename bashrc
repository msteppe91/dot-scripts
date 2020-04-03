# .bashrc
# APPEND THIS FILE TO THE BOTTOM OF ANY EXISTING ~/.BASHRC ON A SYSTEM 

################################################################################
# Steppe added customizations
################################################################################

PROMPT_COMMAND='if [ $? = 0 ]; then DOLLAR_COLOR="\e[1;32m"; else DOLLAR_COLOR="\e[1;31m"; fi'
export PS1='\[\e[1;92m\]\u \[\e[1;96m\]\W $(git branch 2>/dev/null | grep "^*" | colrm 1 2 | sed -En "s/(.*)/[\1] /p")\[$(echo -ne $DOLLAR_COLOR)\]$\[\e[m\] '

# Allow "${somevar}/..." to expand nicely when tab completed
if ((BASH_VERSINFO[0] >= 4)) && ((BASH_VERSINFO[1] >= 2)); then
    shopt -s direxpand
fi

# Turn off terminal bell
bind 'set bell-style none'

# Aliases
alias ll='ls -lF'
