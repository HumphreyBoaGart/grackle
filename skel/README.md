# /skel/

The `/skel/` directory is where we store templates for services and home directories. Many of the operations in Grackle just make copies of these files & folders:

  * `/etc/` - Skeleton files for various system services
  * `/home/app/` - Skeleton homedir for new application accounts
  * `/home/user/` - Skeleton homedir for new user accounts

**BE CAREFUL. Modifying these files means you will be modifying the defaults for all new accounts and services on your server.**
