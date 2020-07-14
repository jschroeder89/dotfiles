# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
eval "$(ssh-agent)"
clear
xset -b
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias get_idf='. $HOME/.esp/esp-idf/export.sh'
alias calc='insect'
alias execute_sp_binam_rec='./sp_binam nest ../experiments/param_rec.json'
alias execute_sp_binam='./sp_binam nest ../experiments/param.json'
alias unfuck_kde='kquitapp5 plasmashell && kstart5 plasmashell'
alias inv='sudo xkeysnail ~/Desktop/inv.py'
alias nst='source ~/venvs/nest/bin/activate'
alias show_network='okular ~/github/cypress_example/build/graph.dot.pdf&!'
alias sh_netw='okular ~/github/cppnam/build/graph.dot.pdf&!'
alias gravit='cd && ./Downloads/__appImage-x64/gravit-designer &!'
alias dmesg='sudo dmesg'
alias sd='shutdown now'
alias ps_off='~/.config/ps_off.sh'
alias ahk='wine ~/.wine/drive_c/Program\ Files/AutoHotkey/AutoHotkey.exe ~/.wine/drive_c/Program\ Files\ \(x86\)/Warcraft\ III/wc3-tyg-inventory.AHK'
alias wc3='wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Warcraft\ III/Warcraft\ III.exe -nativescr'
alias c='cd ..'
alias ge='rm -r ~/.googleearth/Cache/'
alias r='ranger'
alias snowroad='feh --bg-scale ~/Pictures/backgrounds/snowy_road.png'
alias robots='feh --bg-scale ~/Pictures/backgrounds/robots.png'
alias mountain='feh --bg-scale ~/Pictures/backgrounds/mntn.jpg'
alias forest='feh --bg-scale ~/Pictures/backgrounds/forest.png'
alias road='feh --bg-scale ~/Pictures/backgrounds/road.jpg'
alias bridge='feh --bg-scale ~/Pictures/backgrounds/bridge.jpg'
alias space='feh --bg-scale ~/Pictures/backgrounds/space.jpg'
alias fox='feh --bg-scale ~/Pictures/backgrounds/fox.jpg'
alias bear='feh --bg-scale ~/Pictures/backgrounds/girl_bear.jpg'
alias deer='feh --bg-scale ~/Pictures/backgrounds/deer.jpg'
alias forest2='feh --bg-scale ~/Pictures/backgrounds/forest2.png'
alias rezet='source ~/.zshrc'
alias untar='tar -xzf'
alias ml='matlab -nodesktop'
alias fuck='~/Desktop/nn.sh'

#BMI spezifisch


# Path to your oh-my-zsh installation.
export ZSH="/home/johann/.oh-my-zsh"

# Path to xtensa-esp32-elf
export PATH="$PATH:$HOME/.esp/xtensa-esp32-elf/bin"
export IDF_PATH=~/.esp/esp-idf

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(ssh status)
POWERLEVEL9K_STATUS_OK_BACKGROUND='green'
POWERLEVEL9K_STATUS_OK_FOREGROUND='white'
POWERLEVEL9K_STATUS_CROSS_BACKGROUND='red'
POWERLEVEL9K_STATUS_CROSS_FOREGROUND='white'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='red'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='white'
POWERLEVEL9K_OS_ICON=$'\uf312'
POWERLEVEL9K_OS_ICON_BACKGROUND='white'
POWERLEVEL9K_OS_ICON_FOREGROUND='074'
POWERLEVEL9K_HOME_ICON=$''
#POWERLEVEL9K_HOME_ICON=$'\uf312'
POWERLEVEL9K_DIR_HOME_BACKGROUND='green'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='gree'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='green'
POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%f%F{blue}\uf460%f%F{blue}\uf460%f "
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{blue}%K{blue}%} $user_symbol%{%b%f%k%F{blue}%} %{%f%}"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$user_symbol%{%b%f%k%F{yellow}%}\uf061%{%f%} "
POWERLEVEL9K_TIME_BACKGROUND='005'
POWERLEVEL9K_TIME_FOREGROUND='blue'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='red'
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf09b'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='white'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='white'
POWERLEVEL9K_VCS_GIT_ICON=$'\uf1d3'
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf071'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '
POWERLEVEL9K_TIME_FORMAT="%D{%T \uF017}"
POWERLEVEL9K_BATTERY_LOW_BACKGROUND="red"
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND="yellow"
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND="green"
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND="blue"
POWERLEVEL9K_BATTERY_LOW_FOREGROUND="white"
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="white"
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND="white"
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND="white"
POWERLEVEL9K_BATTERY_LOW_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_BATTERY_CHARGING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_BATTERY_CHARGED_VISUAL_IDENTIFIER_COLOR="green"
POWERLEVEL9K_BATTERY_DISCONNECTED_VISUAL_IDENTIFIER_COLOR="white"
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='blue'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='white'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
#POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR_ICON=$'\ue0bd'
#POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR_ICON=$'\ue0bd'
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR_ICON=$'\ue0bd'
#POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='\uE0BD'


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!

#UNCOMMENT TO USE ANACONDA ENV

#__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/johann/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    \eval "$__conda_setup"
#else
#    if [ -f "/home/johann/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/johann/anaconda3/etc/profile.d/conda.sh"
#        CONDA_CHANGEPS1=false conda activate base
#    else
#        \export PATH="/home/johann/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
