# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

nvimn() {
  setsid alacritty -e nvim "$@" >/dev/null 2>&1 &
}

export PATH="$HOME/.cargo/bin:$PATH"
