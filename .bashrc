# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append# We have color support; assume it's compliant with Ecma-48
shopt -s# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
# for secolor_prompt=yesngth see HISTSIZE and HISTFILESIZE in bash(1)
    else=1000
HISTFILEcolor_prompt=
    fi
ficheck the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else set, the pattern "**" used in a pathname expansion context will
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ 'irectories.
fihopt -s globstar
unset color_prompt force_color_prompt

# make less more friendly for non-text input files, see lesspipe(1)
# If this is an xterm set the title to user@host:diresspipe)"
case "$TERM" in
xterm*|rxvt*)e identifying the chroot you work in (used in the prompt below)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;bian_chroot=$(cat /etc/debian_chroot)
*)
    ;;
esact a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'pt, if the terminal has the capability; turned
    alias dir='dir --color=auto' the user: the focus in a terminal window
    alias vdir='vdir --color=auto'nds, not on the prompt
force_color_prompt=yes
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'n
    alias egrep='egrep --color=auto'setaf 1 >&/dev/null; then
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -halF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
