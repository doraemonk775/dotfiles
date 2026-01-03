# dotfiles

Personal dotfiles for macOS with XDG Base Directory support.

## Installation

```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles
./scripts/install.sh
exec zsh
```

## Uninstall

```bash
./scripts/install.sh uninstall
```

## Structure

```
dotfiles/
├── .config/
│   ├── nvim/          # Neovim (Lua + Lazy.nvim)
│   ├── wezterm/       # WezTerm terminal
│   ├── tmux/          # Tmux
│   ├── karabiner/     # Karabiner-Elements
│   └── zsh/           # Zsh config (XDG compliant)
│       ├── .zshrc
│       └── .p10k.zsh
├── home/
│   └── .zshenv        # Sets ZDOTDIR for XDG support
└── scripts/
    └── install.sh     # Symlink installer
```

## Local Overrides

Create these files for machine-specific settings (not tracked in git):

- `~/.config/zsh/.zshenv.local`
- `~/.config/zsh/.zshrc.local`
