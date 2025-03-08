# /bin/

The `/bin/` directory is where we store all of our executable shell scripts. If you want to tweak the behavior of Grackle's commands, these are the files you want to edit in your favorite text editor.

## Contents

Grackle's functions are split across a handful of files:

### `grackle`

The root [grackle](grackle) command mainly serves as the documentation index in the terminal, but it is also where some global service commands are getting dumped. It is only executable by administrators & root.

### `grapp`

The [grapp](grapp) command is for the management of app accounts. It is only executable by administrators & root.

### `grinstall`

The installer and updater resides at [grinstall](grinstall), and it is how various Grackle components are added to the system. It is only executable by root.

### `gruser`

The [gruser](gruser) command is for the management of user accounts. It is only executable by administrators & root.

### `shortcuts`

The [shortcuts](shortcuts) command displays a list of useful bash & tmux keyboard shortcuts. It is executable by everyone on the system.
