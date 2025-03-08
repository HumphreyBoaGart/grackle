# /skel/

The `/skel/` directory is where we store templates for services and home directories. Many of the operations in Grackle just make copies of these files & folders:

  * [etc/](etc/) - Skeleton files for various system services
  * [home/app/](home/app/) - Skeleton homedir for new application accounts
  * [home/user/](home/user/) - Skeleton homedir for new user accounts

***BE CAREFUL!*** Modifying these files means you will be modifying the defaults for all new accounts and services on your server. Furthermore, all changes to this directory are overwritten by `grinstall update`, meaning you will have to reapply any edits you made between updates, until I come back here and figure out a more versatile update mechanism.
