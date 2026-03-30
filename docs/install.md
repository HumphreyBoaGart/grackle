# Installing Grackle

Grackle is a simple thing to install, if you install it under these specific circumstances:

## Requirements

- Factory Debian 12 (Bookworm) install, no GUI
- A root user account *(or temporary sudo user)*
- Git

## Instructions

Run the following commands to install Grackle on your machine:
```
sudo git clone https://github.com/HumphreyBoaGart/grackle /opt/grackle
sudo chmod u+rwx,g-rwx,o-rwx /opt/grackle/bin/grinstall
sudo /opt/grackle/bin/grinstall MODE
```
Where "MODE" is any one of the following install types:
  * **base** - Bare minimum Grackle components
  * **brew** - Homebrew package manager (partial)
  * **docker** - Docker component (scaffold stub)
  * **finger** - finger:// daemon
  * **ftp** - FTP daemon (partial)
  * **gemini** - gemini:// daemon
  * **gopher** - gopher:// daemon
  * **irc** - IRC client utilities
  * **mail** - Mailserver stack
  * **nginx** - Nginx component
  * **pgsql** - PostgreSQL server
  * **php** - PHP component
  * **php-extra** - PHP development utilities (partial)

Run the **base** installer first. If you plan on hosting websites, run the **nginx** installer second.


## First-Time Configuration

### Admin User Account(s)
***Do not log out of the terminal after running the installer, because you may be locked out!*** You need to create an administrative user for yourself first to manage the system, as root logins are disabled at this point in the install process.

While the installer is designed to only be used as root/sudo, it creates an `admin` usergroup on your system so anyone within the group can run the other Grackle commands. This is to minimize the need for dangerous things like remote root access. To create an admin account, run the `gruser` utility thrice. These three commands 1) create the account, 2) grant it SSH access, and 3) drop it in the admin usergroup:

***IMPORTANT:** Currently the 'admin' group is only half-functional, so all top-level administrative commands must be run as root! User `sudo su` to get in so you can keep root login turned off.
```
sudo su
gruser new USERNAME
gruser shell-on USERNAME
gruser admin-on USERNAME
```
The flags `shell-off` and `admin-off` will revoke shell and admin access, respectively. Read more in [User Management](/users.md).

Password authentication over SSH is disabled by default, meaning ***you have to set up a valid public/private key pair to use the account before you switch, or you will be locked out!***

### Layered Admin Permissions
Keep in mind that all Grackle commands are just **stacks of shell commands**, or **macros**. Some of these commands still require root/sudo to function. **If your admin user does not have sudo powers, it will only have "partial" admin access!** To fix this, you will have to edit your sudo config with `visudo` and add your user there as well at the bottom:
```
USERNAME    ALL=(ALL:ALL) ALL
```
A detailed explanation of this layering is included in `bin/README.md`.

### On Pre-Existing Accounts
If you are installing this on a fresh system like I told you to, root should be the only account on the system when you run the installer for the first time. All other users on a Grackle system should be created with `gruser` command *(unless you are manually adding system services)* or they may end up "missing" features. **There is no function to convert pre-existing accounts, nor will there be.** If you used a temporary sudo user to run the installer, just use `gruser` to create a new permanent account, and delete the temp.

## Updating A Grackle System
Once installed, all system updates are performed as normally via `apt`:
```
sudo apt update
sudo apt upgrade
```
Occasionally I will be updating this repo. To update to the latest version of Grackle, run:
```
grackle update
```
This command simply deletes `/opt/grackle`, redownloads a fresh copy of this repo, and resets permissions. *(Of course, if you have made any changes to the files in `/opt/grackle` they will be lost, so make sure to back them up first!)*

If you need to update existing files in `/etc/` with versions from the newest Grackle release, in most cases you can just rerun the installer. However, be forewarned it might require a manual touch if these two commands do not work:
```
grackle reinstall
grinstall MODE
```

