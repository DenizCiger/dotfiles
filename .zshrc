export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:/usr/local/texlive/2025/bin/x86_64-linux:$PATH

# Init zplug
source ~/.zplug/init.zsh

# Theme
zplug "dracula/zsh", from:github, as:theme

# Plugins
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"
# zplug "ohmyzsh/ohmyzsh", use:plugins/git, from:github
# zplug "ohmyzsh/ohmyzsh", use:plugins/archlinux, from:github

# Install missing plugins automatically
if ! zplug check; then
    zplug install
fi

# Load everything
zplug load

# Load completions
autoload -Uz compinit
compinit

# fzf integration
source <(fzf --zsh)

# Aliases
alias zshconf="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias hyprconf="nvim ~/.config/hypr/hyprland.conf"
alias waybarconf="nvim ~/.config/waybar/config.jsonc"
alias waybarcss="nvim ~/.config/waybar/style.css"
alias kittyconf="nvim ~/.config/kitty/kitty.conf"
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias nvimconf="nvim ~/.config/nvim/"
alias nvimconfvsc="vsc ~/.config/nvim/"
alias opnot="nvim ~/Notes/"

alias vsc="code-insiders"
alias vscc="code-insiders ."

# Startup animation
# anifetch ~/Videos/Gif/rickroll.gif -ff -r 10 -W 40 -H 20
# neofetch
nitch

export PATH=$PATH:/home/deniz/.spicetify

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/deniz/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/deniz/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/deniz/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/deniz/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

