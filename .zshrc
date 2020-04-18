####################################################################################################################################
########################## Stanislav Soblev IAM files: .zshrc ######################################################################
##########################         copy to ~/.zshrc           ######################################################################
####################################################################################################################################
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/stan/.oh-my-zsh"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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

##############################################
##  Plugins
##############################################
# plugins=()
# source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node \
### End of Zinit's installer chunk

zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

zplugin ice from"gh-r" as"program" atload"!source <(awless completion zsh)"
zplugin light wallix/awless

zplugin ice from"gh-r" as"program" atload"!source <(awless completion zsh)" src"igit.plugin.zsh"
zplugin light ytakahashi/igit

zplugin light zdharma/zsh-diff-so-fancy
zplugin light tysonwolker/iterm-tab-colors
zplugin load zdharma/history-search-multi-word
zplugin light zdharma/zzcomplete
zinit light zpm-zsh/colorize
zplugin snippet https://github.com/changyuheng/zsh-interactive-cd/blob/master/zsh-interactive-cd.plugin.zsh
#zplugin ice svn atclone'git clone https://github.com/clvv/fasd external'
#zplugin snippet PZT::modules/fasd
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin load zdharma/zui
zplugin snippet OMZ::plugins/sbt/sbt.plugin.zsh
zplugin snippet OMZ::plugins/aws/aws.plugin.zsh
# zplugin catimg
# zplugin colored-man-pages
zplugin snippet OMZ::plugins/compleat/compleat.plugin.zsh
zplugin snippet OMZ::plugins/cp/cp.plugin.zsh
zplugin ice wait'2' lucid
zplugin snippet OMZ::plugins/dircycle/dircycle.plugin.zsh

zplugin ice wait lucid
zplugin snippet OMZ::plugins/extract/extract.plugin.zsh

zplugin ice as"command" from"gh-r" mv"fd* -> fd" pick"fd/fd"
zplugin light sharkdp/fd

zplugin snippet 'OMZ::plugins/gnu-utils/gnu-utils.plugin.zsh'
zplugin snippet OMZ::plugins/gpg-agent/gpg-agent.plugin.zsh
zplugin ice wait'1' lucid
zplugin light laggardkernel/zsh-thefuck

zplugin ice as"program" pick"bin/git-dsf"
zplugin light zdharma/zsh-diff-so-fancy

zplugin ice as"program" make"PREFIX=$ZPFX" src"bin/autojump.zsh"
zplugin light wting/autojump


###################################################### 
# User configuration
######################################################
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=/Users/stan/.local/bin:$PATH
export PATH="/usr/local/opt/openal-soft/bin:$PATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
weather() { curl v2.wttr.in/$1 }
alias nvim "/Users/stan/nvim-osx64/bin/nvim -u init.vim"
alias cat="/usr/local/bin/ccat"
alias cat="ccat"
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="lsd --icon=never"
alias python=python3
alias pip=pip3

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
setopt correct
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  # kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
source /usr/local/lib/node_modules/spaceship-prompt/spaceship.zsh

###########
# MOTD
###########
neofetch