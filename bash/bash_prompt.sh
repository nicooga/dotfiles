# modifiers for __git_ps1
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

__ruby_version() {
  # echo `ruby -v | sed -e "s/ (.*//g"`
  echo `rvm-prompt`
}

bash_prompt() {
    local FILES_INFO="(\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files, \$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //'))"

    local TITLEBAR="\[\033]0;\u:\w \$(__ruby_version) ${FILES_INFO} \007\]"

    local NONE="\[\033[0m\]"    # unsets color to term's fg color

    # regular colors
    local K="\[\033[0;30m\]"    # black
    local R="\[\033[0;31m\]"    # red
    local G="\[\033[0;32m\]"    # green
    local Y="\[\033[0;33m\]"    # yellow
    local B="\[\033[0;34m\]"    # blue
    local M="\[\033[0;35m\]"    # magenta
    local C="\[\033[0;36m\]"    # cyan
    local W="\[\033[0;37m\]"    # white

    # emphasized (bolded) colors
    local EMK="\[\033[1;30m\]"
    local EMR="\[\033[1;31m\]"
    local EMG="\[\033[1;32m\]"
    local EMY="\[\033[1;33m\]"
    local EMB="\[\033[1;34m\]"
    local EMM="\[\033[1;35m\]"
    local EMC="\[\033[1;36m\]"
    local EMW="\[\033[1;37m\]"

    # background colors
    local BGK="\[\033[40m\]"
    local BGR="\[\033[41m\]"
    local BGG="\[\033[42m\]"
    local BGY="\[\033[43m\]"
    local BGB="\[\033[44m\]"
    local BGM="\[\033[45m\]"
    local BGC="\[\033[46m\]"
    local BGW="\[\033[47m\]"

    local UC=$Y                 # user's color
    [ $UID -eq "0" ] && UC=$R   # root's color

  # PS1="$TITLEBAR${Y}[${UC}\u${Y}@${Y}\h ${EMG}\$(__ruby_version) ${EMR}\${PWD}${Y}]${EMR}\$(__git_ps1)${W} ${FILES_INFO}\n▸ ${NONE}"
  # PS1="$TITLEBAR${Y}${UC}\u${Y} ${EMG}\$(__ruby_version) ${EMR}\${PWD}${Y}${EMR}\$(__git_ps1)${W}\n▸ ${NONE}"
    PS1="$TITLEBAR${Y}${UC}\u${Y} ${EMR}\w${Y}${EMR}\$(__git_ps1)\n${EMW}▸ ${NONE}"
}

bash_prompt
unset bash_prompt
