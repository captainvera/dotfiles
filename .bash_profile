export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=$(/usr/local/androidsdk)
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'
alias c='clear'
spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }
PS1="\[\e[32m\]\u\[\e[m\]\\$\[\e[31m\]\h\[\e[m\][\[\e[33m\]\w\[\e[m\]] ~ "
