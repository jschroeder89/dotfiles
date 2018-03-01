#Lines configured by zsh-newuser-install
xset r rate 271 41
export TERM=xterm-256color
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory extendedglob nomatch notify
unsetopt autocd beep
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
alias my='micro'
alias fm='ncursesFM'
#bindkey -v
CASE_SENSITIVE='true'
#End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/johann/.zshrc'
plugins=(
	zsh-256color
	git
	bundler
	dotenv
	osx
	rake
	rbenv
	ruby
)
autoload -Uz compinit
compinit

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

#function powerline_precmd() {
#   PS1="$(powerline-shell --shell zsh $?)"
#}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

# End of lines added by compinstall
source  ~/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_MODE='awesome-patched'
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(battery ssh status time)
POWERLEVEL9K_STATUS_OK_BACKGROUND='121'
POWERLEVEL9K_STATUS_OK_FOREGROUND='white'
POWERLEVEL9K_STATUS_CROSS_BACKGROUND='074'
POWERLEVEL9K_OS_ICON=$'\uf172'
POWERLEVEL9K_OS_ICON_BACKGROUND='white'
POWERLEVEL9K_OS_ICON_FOREGROUND='074'
POWERLEVEL9K_DIR_HOME_BACKGROUND='074'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='074'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='074'
POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
POWERLEVEL9K_TIME_BACKGROUND='074'
POWERLEVEL9K_TIME_FOREGROUND='white'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='blue'
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf09b'
POWERLEVEL9K_VCS_GIT_ICON=$'\uf1d3'
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf071'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
source  ~/powerlevel9k/powerlevel9k.zsh-theme

