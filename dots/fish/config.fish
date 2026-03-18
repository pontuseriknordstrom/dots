# No greeting
set -g fish_greeting

# Environment
set -gx EDITOR helix
set -gx VISUAL helix
set -gx TERMINAL foot

# Aliases
alias ll "ls -la"
alias l "ls -la"
alias g git
alias gs "git status"
alias gc "git commit"
alias gp "git push"
alias ga "git add"
alias gd "git diff"
alias rebuild "cd ~/Dotfiles && git add -A && sudo nixos-rebuild switch --flake .#descartes"
alias cleanup "sudo nix-collect-garbage -d"

# Starship prompt
starship init fish | source

# Direnv
direnv hook fish | source
