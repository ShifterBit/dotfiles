source ~/.config/zsh/scripts/ssh-agent.sh
eval "$(starship init zsh)"

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/tek/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source $HOME/.nix-profile/share/autojump/autojump.zsh
source $HOME/.nix-profile/share/zsh/plugins/nix/nix-zsh-completions.plugin.zsh
source $HOME/.nix-profile/share/zsh/plugins/command-time/command-time.plugin.zsh


# source $HOME/.nix-profile/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.nix-profile/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.nix-profile/share/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="fg=blue,bold"
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="fg=red,bold"

eval "$(direnv hook zsh)"

#rm ~/.config/nvim/init.vim
export EDITOR="nvim"
export PATH=~/.config/emacs/bin:$PATH

alias config='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
# Aliases
alias ls="exa --long --icons --header --git"
