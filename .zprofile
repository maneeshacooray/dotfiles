if [[ "$(uname)" == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  # Added by Obsidian
  export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"
fi

# pipx / local binaries (both platforms)
export PATH="$PATH:$HOME/.local/bin"
