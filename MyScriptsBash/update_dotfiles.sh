#!/bin/bash

# Carpeta de tus dotfiles
DOTFILES_DIR="$HOME/dotfiles_backup"

# Mensaje de commit con fecha y hora
COMMIT_MSG="Actualización de dotfiles $(date '+%Y-%m-%d %H:%M:%S')"

# Ir a la carpeta de dotfiles
cd "$DOTFILES_DIR" || { echo "No se pudo acceder a $DOTFILES_DIR"; exit 1; }

# Verificar si hay cambios
if [ -n "$(git status --porcelain)" ]; then
    # Agregar todos los cambios
    git add .

    # Hacer commit
    git commit -m "$COMMIT_MSG"

    # Subir al repositorio remoto
    git push
    echo "Dotfiles actualizados en GitHub."
else
    echo "No hay cambios para actualizar."
fi
