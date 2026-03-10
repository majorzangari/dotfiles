# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'

alias grep='grep --color=auto'

if [ -x /usr/bin/tput ] && tput setaf 1 &>/dev/null; then
  color_prompt=yes
fi

if [ "$color_prompt" = yes ]; then
  PS1='\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;36m\]\w\[\e[0m\]\$ '
else
  PS1='\u@\h:\w\$ '
fi

nvimn() {
  setsid alacritty -e nvim "$@" >/dev/null 2>&1 &
}

export PATH="$HOME/.cargo/bin:$PATH"
