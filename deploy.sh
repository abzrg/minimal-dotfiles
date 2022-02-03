#!/usr/bin/env sh

set -e

# USAGE: sh ./deploy.sh

# -----------------------------------------------------------------------------
# Neovim

NVIM_DIR="$HOME/.config/nvim"
if [ -d "$NVIM_DIR" ]; then
    cp "$NVIM_DIR" "$NVIM_DIR.backup"
    mkdir -p "$NVIM_DIR" && cp init.vim "$NVIM_DIR"
else
    mkdir -p "$NVIM_DIR" && cp init.vim "$NVIM_DIR"
fi

# -----------------------------------------------------------------------------
# Shell (bash)

[ -e "$HOME/.bashrc" ] && cp "$HOME/.bashrc" "$HOME/.bashrc.backup"
cp .bashrc "$HOME"
[ -e "$HOME/.inputrc" ] && cp "$HOME/.inputrc" "$HOME/.inputrc.backup"
cp .inputrc "$HOME"

# -----------------------------------------------------------------------------
# tmux

[ -e "$HOME/.tmux.conf" ] && cp "$HOME/.tmux.conf" "$HOME/.tmux.conf.backup"
cp .tmux.conf "$HOME"
