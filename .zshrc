## Begin oh-my-zsh

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/evan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git shrink-path)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## End oh-my-zsh

## Begin my personal settings

# Add python binaries to path
export PATH=~/Library/Python/2.7/bin:$PATH

# Add sublime to path
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin/":$PATH

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Immediately append new commands from different shells to history, combining them
setopt APPEND_HISTORY


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# alias hp_production='HP_AWS_ACCESS_KEY_ID=`security find-generic-password -w -s hushpuppy_production_ro_api_key_id -a evan` HP_AWS_SECRET_ACCESS_KEY=`security find-generic-password -w -s hushpuppy_production_ro_api_key_secret -a evan` CONFIG_NAME=Production'
# alias hp_staging='HP_AWS_ACCESS_KEY_ID=`security find-generic-password -w -s hushpuppy_staging_ro_api_key_id -a evan` HP_AWS_SECRET_ACCESS_KEY=`security find-generic-password -w -s hushpuppy_staging_ro_api_key_secret -a evan` CONFIG_NAME=Staging'
# alias hp_sandbox='HP_AWS_ACCESS_KEY_ID=`security find-generic-password -w -s hushpuppy_sandbox_ro_api_key_id -a evan` HP_AWS_SECRET_ACCESS_KEY=`security find-generic-password -w -s hushpuppy_sandbox_ro_api_key_secret -a evan` CONFIG_NAME=Sandbox'
# alias hp_development='HP_AWS_ACCESS_KEY_ID=`security find-generic-password -w -s hushpuppy_development_ro_api_key_id -a evan` HP_AWS_SECRET_ACCESS_KEY=`security find-generic-password -w -s hushpuppy_development_ro_api_key_secret -a evan` CONFIG_NAME=Development'
# alias hp_cowboy='HP_AWS_ACCESS_KEY_ID=`security find-generic-password -w -s hushpuppy_cowboy_ro_api_key_id -a evan` HP_AWS_SECRET_ACCESS_KEY=`security find-generic-password -w -s hushpuppy_cowboy_ro_api_key_secret -a evan` CONFIG_NAME=Cowboy'
# alias hp_test='HP_AWS_ACCESS_KEY_ID=`security find-generic-password -w -s hushpuppy_test_ro_api_key_id -a evan` HP_AWS_SECRET_ACCESS_KEY=`security find-generic-password -w -s hushpuppy_test_ro_api_key_secret -a evan` CONFIG_NAME=Test'

if [ -f /Users/evan/Documents/dev-git/helioscope/build-support/hushpuppy/add_hushpuppy_aliases.sh ]
then
  source /Users/evan/Documents/dev-git/helioscope/build-support/hushpuppy/add_hushpuppy_aliases.sh
fi

export LDFLAGS="-L/usr/local/Cellar/openssl@1.1/1.1.1t/lib"
export CPPFLAGS="-I/usr/local/Cellar/openssl@1.1/1.1.1t/lib/include"
