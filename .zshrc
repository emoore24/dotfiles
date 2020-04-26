# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/evan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#

# Use spaceship theme. NOTE: This may be overridden by pure prompt below.
ZSH_THEME="spaceship"

#####################
# GEOMETRY SETTINGS #
#####################

GEOMETRY_PROMPT_PLUGINS=()
GEOMETRY_PROMPT_SUFFIX=""
GEOMETRY_SYMBOL_SPACER=" "

######################
# SPACESHIP SETTINGS #
######################

SPACESHIP_PROMPT_AND_NEWLINE=true
#SPACESHIP_CHAR_SYMBOL="->"

SPACESHIP_PROMPT_ORDER=(
  time          # Timestamp
  user          # Username
  host          # Hostname
  dir           # Current directory
  exec_time     # Execution time
  vi_mode       # Vi Mode indicator
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code
  char          # Prompt character
)

SPACESHIP_CHAR_PREFIX=" "

SPACESHIP_TIME_SHOW="true"
SPACESHIP_TIME_FORMAT="%t"
SPACESHIP_TIME_PREFIX=""

SPACESHIP_CHAR_SUFFIX=" "

SPACESHIP_USER_SHOW="always"
SPACESHIP_USER_PREFIX=""
SPACESHIP_USER_SUFFIX=" "

SPACESHIP_HOST_SHOW="true"

SPACESHIP_DIR_TRUNC_PREFIX=".../"

# Colors for Base 2 Tone
# SPACESHIP_TIME_COLOR="red"
# SPACESHIP_CHAR_COLOR_SUCCESS="magenta"
# SPACESHIP_CHAR_COLOR_FAILURE="red"
# SPACESHIP_USER_COLOR="blue"
# SPACESHIP_HOST_COLOR="blue"
# SPACESHIP_HOST_COLOR_SSH="blue"
# SPACE_DIR_COLOR="red"

# show exec time if > 60 seconds
SPACESHIP_EXEC_TIME_ELAPSED=60
# no indication in insert mode
SPACESHIP_VI_MODE_INSERT=""
SPACESHIP_VI_MODE_NORMAL="[NORMAL]"

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

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
  alias-tips
  git
  history
  history-substring-search
  ls
  npm
  tmux
  thefuck
  vi-mode
  zsh-autosuggestions
)

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
# make autosuggestions async
zmodload zsh/zpty
ZSH_AUTOSUGGEST_USE_ASYNC="true"

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

source $ZSH/oh-my-zsh.sh

# User configuration

# Uncomment for Pure Prompt
# autoload -U promptinit; promptinit
# prompt pure

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
