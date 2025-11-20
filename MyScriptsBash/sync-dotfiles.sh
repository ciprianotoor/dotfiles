#!/bin/bash

REPO="$HOME/dotfiles"
BACKUP="$HOME/dotfiles_backup"

echo "=== Dotfiles Sync usando Enlaces Simbólicos ==="

mkdir -p "$BACKUP"

link_file() {
    SRC="$REPO/$1"
    DEST="$HOME/$1"

    # Si existe y no es symlink, hacer backup
    if [ -e "$DEST" ] && ! [ -L "$DEST" ]; then
        echo "[Backup] $DEST → $BACKUP/"
        mv "$DEST" "$BACKUP/"
    fi

    # Crear enlace simbólico
    echo "[Link] $DEST → $SRC"
    ln -sf "$SRC" "$DEST"
}

# Archivos individuales
link_file ".bashrc"
link_file ".zshrc"
link_file ".p10k.zsh"
link_file ".profile"
link_file ".nanorc"
link_file ".shell.pre-oh-my-zsh"

# Carpeta .config completa o parcial
link_file ".config"

# Personalizaciones de Oh My Zsh
link_file ".oh-my-zsh/custom"

# Git Push Automático
echo "=== Subiendo cambios a GitHub ==="
cd "$REPO"
git add .
git commit -m "Sync $(date '+%F %T')" 2>/dev/null || echo "No hay cambios para commitear."
git push

echo "=== Proceso completado ==="
