ZSH_THEME="powerlevel9k/powerlevel9k"

DISABLE_LS_COLORS="true"

plugins=(git sublime httpie)

if [[ "$OSTYPE" = darwin* ]]; then
  plugins=(osx $plugins)
fi

DISABLE_UPDATE_PROMPT=true

ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="half-life"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_left"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M - %d.%m.%y}"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="red"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="black"

PROMPT=$'%{$purple%}%n%{$reset_color%} in %{$limegreen%}%~%{$reset_color%}$vcs_info_msg_0_%{$orange%} λ%{$reset_color%} '

source $ZSH/oh-my-zsh.sh
