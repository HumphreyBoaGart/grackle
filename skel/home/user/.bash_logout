# GRACKLE BASH CONFIG - ~/.bash_logout
# Generated From: /opt/grackle/skel/home/user/.bash_logout
# Saves To: /home/{{USERNAME}}/.bash_logout
#
# Executed by bash(1) when login shell exits.

# Clear screen when leaving console to increase privacy
if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi
