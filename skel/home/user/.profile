# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# uncomment to run tmux on login
#[ -z "$TMUX"  ] && { tmux attach || tmux new-session && exit; }

# uncomment to display tmux shortcuts at top of shell
#cat <<EOF
#$(tput setaf 6 bold)TMUX SHORTCUTS:$(tput sgr0)
#$(tput bold)Ctrl+B D$(tput sgr0) — Detach from the current session.
#$(tput bold)Ctrl+B %$(tput sgr0) — Split pane into two panes horizontally.
#$(tput bold)Ctrl+B "$(tput sgr0) — Split pane into two panes vertically.
#$(tput bold)Ctrl+B Arrow Keys$(tput sgr0) — Move between panes.
#$(tput bold)Ctrl+B X$(tput sgr0) — Close pane.
#$(tput bold)Ctrl+B C$(tput sgr0) — Create a new window.
#$(tput bold)Ctrl+B N or P$(tput sgr0) — Move to the next or previous window.
#$(tput bold)Ctrl+B 0  (1,2...)$(tput sgr0) — Move to a specific window by number.
#$(tput bold)Ctrl+B :$(tput sgr0) — Enter the command line to type commands.
#$(tput bold)Ctrl+B ?$(tput sgr0) — View all keybindings. Press Q to exit.
#$(tput bold)Ctrl+B W$(tput sgr0) — Open a panel to navigate across windows in multiple sessions.
#EOF
