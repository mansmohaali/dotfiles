#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


#/usr/bin/pipewire
#/usr/bin/pipewire-pulse
#/usr/bin/pipewire-media-session

#Making nvim by default SUDO_EDITOR
SUDO_EDITOR=/usr/bin/nvim 
export SUDO_EDITOR

# adding flutter to PATH and at the 1st position
export PATH=/opt/flutter/bin/:$PATH
# Making google-chrome-stable executable visible to terminal
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable


eval "$(starship init bash)"
eval "$(zoxide init --cmd cd bash)"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib/mojo
export PATH=$PATH:$HOME/.modular/pkg/packages.modular.com_mojo/bin/
export PATH=$PATH:$HOME/.cargo/bin/
export PATH=$PATH:$HOME/.local/bin/

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion


# Tmux auto reload session after reboot or system crash
alias mux='pgrep -vx tmux > /dev/null && \
        tmux new -d -s delete-me && \
        tmux run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh && \
        tmux kill-session -t delete-me && \
        tmux attach || tmux attach'

alias demux='tmux kill-session -t delete-me' 

#alias for lf
alias lf='lfub'

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp -uq)"
    trap 'rm -f $tmp >/dev/null 2>&1 && trap - HUP INT QUIT TERM PWR EXIT' HUP INT QUIT TERM PWR EXIT
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
# bindkey -s '^o' '^ulfcd\n'
