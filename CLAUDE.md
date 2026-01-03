# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal dotfiles repository for macOS, managing configurations for a terminal-centric development workflow with Japanese language support.

## Directory Structure

- **`.config/`** - XDG-compliant configuration directory (symlinked to `~/.config/`)
- **`home/`** - Files to be symlinked directly to `$HOME` (e.g., `.zshenv`)
- **`scripts/`** - Installation and utility scripts

## Managed Configurations

- **Neovim** (`.config/nvim/`) - Lua-based configuration with Lazy.nvim plugin manager
- **Zsh** (`.config/zsh/`, `home/.zshenv`) - XDG-compliant shell with Powerlevel10k theme
- **WezTerm** (`.config/wezterm/`) - Terminal emulator
- **Tmux** (`.config/tmux/`) - Terminal multiplexer
- **Karabiner-Elements** (`.config/karabiner/`) - macOS keyboard remapper for Vim/IME integration

## Neovim Architecture

Entry point is `init.lua`, which loads:
- `lua/option.lua` - Editor settings
- `lua/keymapping.lua` - Key bindings (Space as leader key)
- `lua/plugin/init.lua` - Plugin definitions with Lazy.nvim

Plugin configurations are isolated in `lua/plugin/config/`. Current active plugins:
- **snacks.nvim** - File explorer, picker, buffer management
- **bufferline.nvim** - Buffer tabs
- **lualine.nvim** - Status line
- **nightfox.nvim** - Colorscheme (carbonfox theme)
- **copilot.lua** / **CopilotChat.nvim** - AI assistance

Lazy.nvim bootstraps itself on first launch; no manual plugin installation needed.

## Shell Configuration

Zsh is configured with XDG Base Directory support:
- `home/.zshenv` sets `ZDOTDIR=$XDG_CONFIG_HOME/zsh` and is symlinked to `~/.zshenv`
- `.config/zsh/.zshrc` and `.config/zsh/.p10k.zsh` contain the main configuration
- Local overrides (`.zshrc.local`, `.zshenv.local`) are sourced from `$ZDOTDIR` if present
- History is stored in `$XDG_STATE_HOME/zsh/history`
- Platform-aware PATH management for macOS/Homebrew and Linux

## Karabiner Rules

Custom rules for Vim workflow with Japanese IME:
- Escape and Ctrl+[ send `japanese_eisuu` (switch to English mode)
- Option/Command keys swapped on external keyboard (vendor_id: 1278)
