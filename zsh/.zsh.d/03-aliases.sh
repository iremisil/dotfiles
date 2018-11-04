alias ls="ls --color=auto --group-directories-first -h"
alias df="df -h"
alias du="du -ch"
alias diff="colordiff -u"
alias less="less -R"
alias agj="ag --java --scala"
mkcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}