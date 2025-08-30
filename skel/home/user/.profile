# GRACKLE BASH CONFIG - ~/.profile
# Generated From: /opt/grackle/skel/home/user/.profile
# Saves To: /home/{{USERNAME}}/.profile
#
# Executed by the command interpreter for login shells. This file
# is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.
# See /usr/share/doc/bash/examples/startup-files for examples.
# The files are located in the bash-doc package.

# Invoke ~/.bashrc
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# Uncomment to run screen on login
#screen -dRR
# Uncomment to run tmux on login
#[ -z "$TMUX"  ] && { tmux attach || tmux new-session && exit; }
# Uncomment to run byobu on login
#byobu

# Output shortcuts
cat <<EOF
  ▄▄ • ▄▄▄   ▄▄▄·  ▄▄· ▄ •▄ ▄▄▌  ▄▄▄ .
 ▐█ ▀ ▪▀▄ █·▐█ ▀█ ▐█ ▌▪█▌▄▌▪██•  ▀▄.▀·
 ▄█ ▀█▄▐▀▀▄ ▄█▀▀█ ██ ▄▄▐▀▀▄·██▪  ▐▀▀▪▄
 ▐█▄▪▐█▐█•█▌▐█ ▪▐▌▐███▌▐█.█▌▐█▌▐▌▐█▄▄▌
 ·▀▀▀▀ .▀  ▀ ▀  ▀ ·▀▀▀ ·▀  ▀.▀▀▀  ▀▀▀ 
Enter $(tput setaf 3 bold)grackle help$(tput sgr0) for a list of commands.
Enter $(tput setaf 3 bold)shortcuts$(tput sgr0) for a list of keyboard shortcuts.
EOF
