#!/bin/bash
set -euo pipefail

# ==========================
# Configuration
# ==========================
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BACKUP_DIR="$HOME/.dotfiles_backup/$(date +%Y%m%d_%H%M%S)"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# ==========================
# Helper Functions
# ==========================
info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

success() {
    echo -e "${GREEN}[OK]${NC} $1"
}

warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

backup_and_link() {
    local src="$1"
    local dst="$2"

    # Create parent directory if needed
    mkdir -p "$(dirname "$dst")"

    # If destination exists and is not a symlink to our source
    if [[ -e "$dst" || -L "$dst" ]]; then
        if [[ -L "$dst" && "$(readlink "$dst")" == "$src" ]]; then
            success "Already linked: $dst"
            return 0
        fi

        # Backup existing file/directory
        mkdir -p "$BACKUP_DIR"
        local backup_path="$BACKUP_DIR/$(basename "$dst")"
        mv "$dst" "$backup_path"
        warn "Backed up: $dst -> $backup_path"
    fi

    # Create symlink
    ln -s "$src" "$dst"
    success "Linked: $dst -> $src"
}

# ==========================
# Installation
# ==========================
main() {
    info "Starting dotfiles installation..."
    info "Dotfiles directory: $DOTFILES_DIR"
    echo

    # XDG Config Directory
    XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
    mkdir -p "$XDG_CONFIG_HOME"

    # Link .config directories
    info "Linking .config directories..."
    for dir in "$DOTFILES_DIR/.config/"*/; do
        if [[ -d "$dir" ]]; then
            dir_name="$(basename "$dir")"
            backup_and_link "$dir" "$XDG_CONFIG_HOME/$dir_name"
        fi
    done
    echo

    # Link home directory files
    info "Linking home directory files..."
    for file in "$DOTFILES_DIR/home/".*; do
        if [[ -f "$file" ]]; then
            file_name="$(basename "$file")"
            backup_and_link "$file" "$HOME/$file_name"
        fi
    done
    echo

    # Summary
    if [[ -d "$BACKUP_DIR" ]]; then
        info "Backup location: $BACKUP_DIR"
    fi

    success "Installation complete!"
    echo
    info "Please restart your shell or run: exec zsh"
}

# ==========================
# Uninstall Function
# ==========================
uninstall() {
    info "Uninstalling dotfiles..."

    XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

    # Remove .config symlinks
    for dir in "$DOTFILES_DIR/.config/"*/; do
        if [[ -d "$dir" ]]; then
            dir_name="$(basename "$dir")"
            target="$XDG_CONFIG_HOME/$dir_name"
            if [[ -L "$target" && "$(readlink "$target")" == "$dir" ]]; then
                rm "$target"
                success "Removed: $target"
            fi
        fi
    done

    # Remove home symlinks
    for file in "$DOTFILES_DIR/home/".*; do
        if [[ -f "$file" ]]; then
            file_name="$(basename "$file")"
            target="$HOME/$file_name"
            if [[ -L "$target" && "$(readlink "$target")" == "$file" ]]; then
                rm "$target"
                success "Removed: $target"
            fi
        fi
    done

    success "Uninstall complete!"
}

# ==========================
# Entry Point
# ==========================
case "${1:-install}" in
    install)
        main
        ;;
    uninstall)
        uninstall
        ;;
    *)
        echo "Usage: $0 [install|uninstall]"
        exit 1
        ;;
esac
