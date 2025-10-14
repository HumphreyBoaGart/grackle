# GRACKLE BASH CONFIG - ~/.bash_aliases
# Generated From: /opt/grackle/skel/home/user/.bash_aliases
# Saves To: /home/{{USERNAME}}/.bash_aliases
#
# Supplementary variables and aliases for bash(1) to set.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Styled Hostname & Prompt
# Single-Line Prompt
#PS1='\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\] \[\033[01;32m\]\$\[\033[00m\] '
# Double-Line Prompt
PS1="\[\033[1;34m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[1;34m\]\342\234\227\[\033[1;34m\]]\342\224\200\")$(if [[ ${EUID} == 0 ]]; then echo ' \[\033[01;31m\]root\[\033[01;31m\]@\[\033[01;31m\]\h'; else echo ' \[\033[01;32m\]\u\[\033[01;32m\]@\[\033[01;32m\]\h'; fi)\[\033[1;94m\] \w\[\033[1;34m\]\n\[\033[1;34m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;32m\]\\$\[\e[0m\] "

# Umask for chmod 600/700
umask 0077
# Umask for chmod 640/750
#umask 0027

# Set environment variables
export PATH="/opt/grackle/bin:$HOME/.local/bin:/usr/local/bin:/usr/bin"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_DIRS="$HOME/.local/share/applications:/usr/local/share/:/usr/share/"
export XDG_DATA_HOME="$HOME/.local/share"

# Misc Aliases
alias commit='git add * && git commit -m'
alias diff='diff --color=auto'
alias dir='dir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias l='ls -ACF --color=always'
alias ll='ls -aFhl --color=always'
alias ls='ls -AFhl --color=always'
alias vdir='vdir --color=auto'
