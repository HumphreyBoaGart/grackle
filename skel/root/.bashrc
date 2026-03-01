# GRACKLE BASH CONFIG - ~/.bashrc
# Generated From: /opt/grackle/skel/root/.bashrc
# Saves To: /root/.bashrc
#
# Executed by bash(1) for non-login shells.

# Styled Prompt & Hostname
# Single-Line Prompt
#PS1='\[\033[01;31m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\] \[\033[01;31m\]\$\[\033[00m\] '
# Double-Line Prompt
PS1="\[\033[1;95m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[1;95m\]\342\234\227\[\033[1;95m\]]\342\224\200\")$(if [[ ${EUID} == 0 ]]; then echo ' \[\033[01;31m\]root\[\033[01;31m\]@\[\033[01;31m\]\h'; else echo ' \[\033[01;32m\]\u\[\033[01;32m\]@\[\033[01;32m\]\h'; fi)\[\033[1;94m\] \w\[\033[1;34m\]\n\[\033[1;95m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;31m\]\\$\[\e[0m\] "

# Umask chmod 600/700
umask 0077
# Umask chmod 640/750
#umask 0027

# Set environment variables
export PATH="/opt/grackle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# Misc Aliases
alias diff='diff --color=auto'
alias dir='dir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias ls='ls -lhaF --color=auto'
alias sysrl='systemctl reload'
alias sysrs='systemctl restart'
alias sysst='systemctl status'
alias vdir='vdir --color=auto'

# Extra Alias Definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly, if you want
# them to easily survive updates.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
