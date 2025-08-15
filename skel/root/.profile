# GRACKLE BASH CONFIG - ~/.profile
# Generated From: /opt/grackle/skel/root/.profile
# Saves To: /root/.profile
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

mesg n 2> /dev/null || true
