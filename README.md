# dotfiles

Personal config files for macOS (Apple M4).

| Tool | Config |
|------|--------|
| zsh | `.zshrc`, `.zprofile`, `.zshenv` |
| bash | `.bashrc`, `.profile` |
| fzf | `.fzf.zsh`, `.fzf.bash` |
| Neovim | `nvim/` (LazyVim) |
| tmux | `tmux/tmux.conf` |
| Kitty | `kitty/kitty.conf` |
| btop | `btop/` |
| gitui | `gitui/` |
| mpv | `mpv/` |
| neofetch | `neofetch/` |

## Install

```sh
git clone git@github.com:maneeshacooray/dotfiles.git ~/dotfiles

# zsh / bash / fzf
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zprofile ~/.zprofile
ln -sf ~/dotfiles/.zshenv ~/.zshenv
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.profile ~/.profile
ln -sf ~/dotfiles/.fzf.zsh ~/.fzf.zsh
ln -sf ~/dotfiles/.fzf.bash ~/.fzf.bash

# configs
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/tmux ~/.config/tmux
ln -sf ~/dotfiles/kitty ~/.config/kitty
ln -sf ~/dotfiles/btop ~/.config/btop
ln -sf ~/dotfiles/gitui ~/.config/gitui
ln -sf ~/dotfiles/mpv ~/.config/mpv
ln -sf ~/dotfiles/neofetch ~/.config/neofetch
```
