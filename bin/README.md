# /bin/

The `/bin/` directory is where we store all of our executable shell scripts. This location is added to your $PATH during the install process, so you can run these files in your terminal without having to prefix them with the whole location. If you want to tweak the behavior of Grackle's commands, these are the files you want to edit in your favorite text editor.

## Contents

Grackle's functions are split across a handful of files with varying permissions:

### [grackle](grackle)

The root `grackle` command mainly serves as the documentation index in the terminal, but it is also where some global service commands are getting dumped. It is only executable by administrators & root.

### [grapp](grapp)

The `grapp` command is for the management of app accounts. It is only executable by administrators & root.

### [grbuild](grbuild)

The `grbuild` command is for building application software. It is only executable by administrators & root.

### [grinstall](grinstall)

The installer and updater resides at `grinstall`, and it is how various Grackle components are added to the system. It is only executable by root.

### [gruser](gruser)

The `gruser` command is for the management of user accounts. It is only executable by administrators & root.

### [shortcuts](shortcuts)

The `shortcuts` command displays a list of useful bash & tmux keyboard shortcuts. It is executable by everyone on the system.
