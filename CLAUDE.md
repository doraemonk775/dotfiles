# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal dotfiles repository for macOS, managing configurations for a terminal-centric development workflow with Japanese language support.

## Managed Configurations

- **Neovim** (`.config/nvim/`) - Lua-based configuration with Lazy.nvim plugin manager
- **Zsh** (`.zshrc`, `.zshenv`, `.p10k.zsh`) - Shell with Powerlevel10k theme
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

Zsh uses the local override pattern:
- `.zshrc.local` and `.zshenv.local` are sourced if present (not tracked in git)
- Platform-aware PATH management for macOS/Homebrew and Linux

## Karabiner Rules

Custom rules for Vim workflow with Japanese IME:
- Escape and Ctrl+[ send `japanese_eisuu` (switch to English mode)
- Option/Command keys swapped on external keyboard (vendor_id: 1278)
