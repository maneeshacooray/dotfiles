# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME="spaceship"
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(git zsh-autosuggestions you-should-use zsh-bat fzf poetry fzf-tab direnv fast-syntax-highlighting)

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

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# zsh history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# SPACESHIP_PROMPT_ORDER=(
# #  user          # Username section
#   time
#   dir
#   host          # Hostname section
#   git           # Git section (git_branch + git_status)
#   package       # Package version
#   exec_time     # Execution time
#   line_sep      # Line break
#   jobs          # Background jobs indicator
#   exit_code     # Exit code section
#   char          # Prompt character
# )

SPACESHIP_PROMPT_ORDER=(
  time           # Time stamps section
  user           # Username section
  dir            # Current directory section
  host           # Hostname section
  git            # Git section (git_branch + git_status)
  hg             # Mercurial section (hg_branch  + hg_status)
  package        # Package version
  node           # Node.js section
  bun            # Bun section
  deno           # Deno section
  ruby           # Ruby section
  python         # Python section
  elm            # Elm section
  elixir         # Elixir section
  xcode          # Xcode section
  xcenv          # xcenv section
  swift          # Swift section
  swiftenv       # swiftenv section
  golang         # Go section
  perl           # Perl section
  php            # PHP section
  rust           # Rust section
  haskell        # Haskell Stack section
  scala          # Scala section
  kotlin         # Kotlin section
  java           # Java section
  lua            # Lua section
  dart           # Dart section
  julia          # Julia section
  crystal        # Crystal section
  docker         # Docker section
  docker_compose # Docker section
  aws            # Amazon Web Services section
  gcloud         # Google Cloud Platform section
  azure          # Azure section
  venv           # virtualenv section
  conda          # conda virtualenv section
  uv             # uv section
  dotnet         # .NET section
  ocaml          # OCaml section
  vlang          # V section
  zig            # Zig section
  purescript     # PureScript section
  erlang         # Erlang section
  gleam          # Gleam section
  kubectl        # Kubectl context section
  ansible        # Ansible section
  terraform      # Terraform workspace section
  pulumi         # Pulumi stack section
  ibmcloud       # IBM Cloud section
  nix_shell      # Nix shell
  gnu_screen     # GNU Screen section
  exec_time      # Execution time
  async          # Async jobs indicator
  line_sep       # Line break
  battery        # Battery level and status
  jobs           # Background jobs indicator
  exit_code      # Exit code section
  sudo           # Sudo indicator
  char           # Prompt character
)

#SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="🚀"
SPACESHIP_CHAR_SUFFIX=" "

zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview '[[ -d $realpath ]] && eza --tree --level=2 --color=always $realpath || eza --long --color=always $realpath'
zstyle ':fzf-tab:*' popup-min-size 80 12
zstyle ':fzf-tab:*' switch-group '<' '>'
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup

# -----------------------------------------------------
# Fastfetch
# -----------------------------------------------------
# The following block was commented out because it runs `fastfetch` on every new shell,
# which can significantly slow down startup time.
# if [[ $(tty) == *"pts"* ]]; then
#     fastfetch
# fi

# eval "$(spaceship init zsh)"

export PATH="$PATH:/Users/maneesha/.local/bin"
export GOOGLE_CLOUD_PROJECT="durable-river-464104-k9"
export PATH=$PATH:/Users/maneesha/.spicetify
export PATH="/Users/maneesha/.antigravity/antigravity/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
# Defer loading nvm until it's actually used
if [ -s "$NVM_DIR/nvm.sh" ]; then
    declare -a __node_commands=("nvm" "node" "npm" "yarn" "pnpm")
    for cmd in "${__node_commands[@]}"; do
        eval "${cmd}() { unset -f ${__node_commands[@]}; . '${NVM_DIR}/nvm.sh'; ${cmd} \$@ }"
    done
fi
if [ -s "$NVM_DIR/bash_completion" ]; then
  . "$NVM_DIR/bash_completion"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. "$HOME/.cargo/env"



alias cd="z"
alias lt="tree -L 1"

alias cat="bat"
alias rcat="/bin/cat"

alias ls="eza --icons=always" # ls
alias ll='eza -lbF --git --icons=always' # list, size, type, git
alias llm='eza -lbGd --git --sort=modified --icons=always' # long list, modified date sort
alias la='eza -lbhHigUmuSa --time-style=long-iso --git --color-scale --icons=always' # all list
alias lx='eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --icons=always' # all + extended list
alias lS='eza -1 --icons=always' # one column, just names
alias lt='eza --tree --level=2 --icons=always' # tree

alias vi="nvim"
alias ssh='TERM="xterm-256color" ssh'
alias puka='TERM="xterm-256color" lazyssh'

alias ani='ani-cli -c -N --skip'

# Added by Antigravity
export PATH="/Users/maneesha/.antigravity/antigravity/bin:$PATH"

export ANDROID_HOME="/Users/maneesha/Library/Android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$PATH"

# Set JAVA_HOME for Gradle
export JAVA_HOME="/opt/homebrew/opt/openjdk"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"

# Added by Antigravity
export PATH="/Users/maneesha/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity IDE
export PATH="/Users/maneesha/.antigravity-ide/antigravity-ide/bin:$PATH"

# Added by Antigravity IDE
export PATH="/Users/maneesha/.antigravity-ide/antigravity-ide/bin:$PATH"
eval "$(zoxide init zsh)"

