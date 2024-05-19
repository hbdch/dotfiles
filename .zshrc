
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
	archlinux
	colored-man-pages
	git
	zsh-autosuggestions
	python
	web-search
	vi-mode
	z)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR='nvim'
export ARCHFLAGS="-arch x86_64"

alias zprofile="$EDITOR ~/.zshrc"
alias zrefresh='source ~/.zshrc'
alias tprofile="$EDITOR ~/.tmux.conf"
alias nvprofile="$EDITOR ~/.config/nvim/init.lua"
alias aprofile="$EDITOR ~/.config/alacritty/alacritty.toml"
alias gprofile="$EDITOR ~/.gitconfig"

# https://askubuntu.com/questions/1393204/changing-zsh-autosuggestions-color
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan"
export LS_COLORS="$(vivid generate molokai)"
export PYTHONBREAKPOINT="web_pdb.set_trace"

fbin() {
    find /bin/ -name "*$1*";
}

ulimit -c unlimited
