# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
ZSH_THEME="spaceship"

# Which plugins would you like to load?
plugins=(git zsh-autosuggestions you-should-use zsh-bat fzf poetry fzf-tab direnv fast-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# zsh history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt interactivecomments

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

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="🚀"
SPACESHIP_CHAR_SUFFIX=" "

zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:*:*' fzf-preview '[[ -d $realpath ]] && eza --tree --level=2 --color=always $realpath || bat --color=always --style=numbers --line-range=:200 $realpath 2>/dev/null || eza -l --color=always $realpath'
zstyle ':fzf-tab:*' popup-min-size 80 12
zstyle ':fzf-tab:*' switch-group '<' '>'
# zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup

# -----------------------------------------------------
# Fastfetch (disabled: slows down shell startup)
# -----------------------------------------------------
# if [[ $(tty) == *"pts"* ]]; then
#     fastfetch
# fi

# -----------------------------------------------------
# Platform-specific PATH and tooling
# -----------------------------------------------------
case "$(uname)" in
  Darwin)
    export PATH="$PATH:$HOME/.local/bin"
    export PATH="$PATH:$HOME/.spicetify"
    export PATH="$HOME/.antigravity/antigravity/bin:$PATH"
    export PATH="$HOME/.antigravity-ide/antigravity-ide/bin:$PATH"

    export ANDROID_HOME="$HOME/Library/Android/sdk"
    export PATH="$ANDROID_HOME/platform-tools:$PATH"

    # JAVA_HOME for Gradle (Homebrew OpenJDK)
    export JAVA_HOME="/opt/homebrew/opt/openjdk"
    export PATH="$JAVA_HOME/bin:$PATH"

    export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"

    # nvm (Homebrew install), deferred until first use
    export NVM_DIR="$HOME/.nvm"
    if [ -s "$NVM_DIR/nvm.sh" ]; then
        declare -a __node_commands=("nvm" "node" "npm" "yarn" "pnpm")
        for cmd in "${__node_commands[@]}"; do
            eval "${cmd}() { unset -f ${__node_commands[@]}; . '${NVM_DIR}/nvm.sh'; ${cmd} \$@ }"
        done
    fi
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
    ;;
  Linux)
    export PATH="$PATH:$HOME/.local/bin"

    # JAVA_HOME if a JDK is installed (Arch: /usr/lib/jvm/default)
    [ -d /usr/lib/jvm/default ] && export JAVA_HOME="/usr/lib/jvm/default"

    # Android SDK if present
    [ -d "$HOME/Android/Sdk" ] && export ANDROID_HOME="$HOME/Android/Sdk" \
      && export PATH="$ANDROID_HOME/platform-tools:$PATH"

    # nvm via AUR package, deferred until first use
    if [ -s /usr/share/nvm/init-nvm.sh ]; then
        export NVM_DIR="$HOME/.nvm"
        declare -a __node_commands=("nvm")
        for cmd in "${__node_commands[@]}"; do
            eval "${cmd}() { unset -f ${__node_commands[@]}; . /usr/share/nvm/init-nvm.sh; ${cmd} \$@ }"
        done
    fi
    ;;
esac

export GOOGLE_CLOUD_PROJECT="durable-river-464104-k9"

# fzf shell integration (key-bindings only; completion is handled by fzf-tab)
if [[ "$(uname)" == "Linux" && -f /usr/share/fzf/key-bindings.zsh ]]; then
    source /usr/share/fzf/key-bindings.zsh
else
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fi

# rustup, if installed via rustup.rs (guarded: absent on Arch's rustup package)
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# -----------------------------------------------------
# Aliases
# -----------------------------------------------------
alias cd="z"
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

eval "$(zoxide init zsh)"
export PATH=$PATH:~/.spicetify
