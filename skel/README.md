# /skel/

The `/skel/` directory is where we store templates for services and home directories. Many of the operations in Grackle just make copies of these files & folders:

  * [etc/](etc/) - Skeleton files for various system services
  * [home/app/](home/app/) - Skeleton homedir for new application accounts
  * [home/user/](home/user/) - Skeleton homedir for new user accounts
  * [root/](root/) - Skeleton homedir for root user account

***BE CAREFUL!*** Modifying these files means you will be modifying the defaults for all new accounts and services on your server. Furthermore, all changes to this directory are overwritten by [grinstall update](https://github.com/HumphreyBoaGart/grackle#updating), meaning you will have to reapply any edits you made between updates, until someone comes back here and figures out a more versatile update mechanism.

Also, Linux novices be warned, these are just skeletons for **new accounts & service additions**. Changes here are not recursively applied to pre-existing accounts!
