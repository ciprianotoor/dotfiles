# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ======================================================
# ALIAS UTILES PARA UBUNTU (BASH / ZSH)
# ======================================================

# -------------------------------
# NAVEGACION Y TERMINAL
# -------------------------------
alias ll='ls -alF'            # Lista todos los archivos con detalles y marcas (tipo / para carpetas)
alias la='ls -A'              # Lista todos excepto . y ..
alias l='ls -CF'              # Lista simple
alias ..='cd ..'               # Subir un nivel
alias ...='cd ../..'           # Subir dos niveles
alias ....='cd ../../..'       # Subir tres niveles
alias c='clear'                # Limpiar terminal
alias ls='lsd'
# -------------------------------
# GESTION DE PAQUETES (APT)
# -------------------------------
alias update='sudo apt update && sudo apt upgrade -y'  # Actualiza repositorios y paquetes
alias apti='sudo apt install'                        # Instalar paquetes: apti paquete
alias aptr='sudo apt remove'                         # Eliminar paquetes: aptr paquete
alias aptc='sudo apt clean && sudo apt autoclean'    # Limpiar cache de paquetes
alias aptf='sudo apt autoremove'                     # Quitar paquetes innecesarios

# -------------------------------
# BASH / ZSH
# -------------------------------
alias reload='source ~/.bashrc'       # Recargar Bash
alias revote='source ~/.zshrc'    # Recargar Zsh
alias bashrc='nano ~/.bashrc'         # Editar Bashrc
alias perfil='nano ~/.zshrc'           # Editar Zshrc
alias p10kconfig='nano ~/.p10k.zsh'  # Editar configuración Powerlevel10k
alias restartbash='exec bash'         # Reiniciar Bash
alias restartzsh='exec zsh'           # Reiniciar Zsh

# -------------------------------
# GIT
# -------------------------------
alias gs='git status'                             # Estado del repositorio
alias ga='git add'                                # Añadir cambios
alias gc='git commit'                             # Commit
alias gp='git push'                               # Subir cambios
alias gl='git log --oneline --graph --all'        # Log gráfico resumido
alias gco='git checkout'                          # Cambiar de rama
alias gd='git diff'                               # Diferencias de cambios

# -------------------------------
# SISTEMA / MONITOREO
# -------------------------------
alias dfh='df -h'                 # Espacio en disco human-readable
alias du='du -h --max-depth=1'    # Tamaño de directorios en nivel 1
alias top='htop'                   # Top mejorado (instalar htop primero)
alias ports='ss -tuln'             # Ver puertos abiertos y escuchando
alias myip='curl ifconfig.me'      # Mostrar IP pública
alias meminfo='free -h'            # Memoria disponible

# -------------------------------
# RED / NETWORK
# -------------------------------
alias pingg='ping -c 5'           # Ping a host (5 paquetes)
alias restartnetwork='sudo systemctl restart NetworkManager'  # Reiniciar red
alias ipinfo='ip a'               # Información de interfaces y IPs
alias routeinfo='ip route'        # Tabla de rutas

# -------------------------------
# OTROS ALIAS UTILITARIOS
# -------------------------------
alias cls='clear'                 # Limpiar terminal (alternativa)
alias please='sudo $(fc -ln -1)' # Ejecutar último comando con sudo
alias today='date +"%Y-%m-%d %H:%M:%S"' # Fecha y hora actual

# Alias para mostrar todos los alias
alias ayuda='alias | sort'
# Alias útiles para Tailscale
alias tsup='sudo tailscale up'
alias tsdown='sudo tailscale down'
alias tsstatus='tailscale status'
alias tsip='tailscale ip'
# Alias ssh
alias proxmox='ssh  -p 1984 cipriano@192.168.1.4'
###SSH
alias clavepublicassh='cat ~/.ssh/*.pub'
####Power

