# Grackle
Simple bash-based webserver management with minimal dependencies.

Currently only tested to work in Debian.

**This software is still in very early stages, and will probably not be useful to anyone but myself for a little bit. Check back later.**

## Installation

### Requirements

- Factory Debian 12 (Bookworm) install, no GUI
- Git

### Instructions
Run the following commands to install Grackle on your machine:
```
sudo git clone https://github.com/HumphreyBoaGart/grackle /home/grackle
sudo chmod u+rwx,g-rwx,o-rwx /home/grackle/bin/grinstall
sudo /home/grackle/bin/grinstall MODE
```
Where "MODE" is any one of the following install types:
  * **base** (Bare minimum Grackle components)
  * **web** (Base package + Nginx web server)
  * **full** (All components)

Alternatively, "MODE" can be replaced with a la carte package names:
  * **docker** (Docker component)
  * **nginx** (Nginx component)
  * **php** (PHP component)

### First-Time Configuration

#### Admin User Account
While the installer is designed to only be used as root (or via sudo), it creates an `admin` usergroup on your system so anyone within the group can run Grackle commands. This is to minimize the need for dangerous things like remote root access.

To create an admin account, run the `gruser` utility thrice. These three commands 1) create the account, 2) grant it SSH access, and 3) drop it in the admin usergroup:
```
sudo gruser new USERNAME
sudo gruser shell-on USERNAME
sudo gruser admin-on USERNAME
```
The flags `shell-off` and `admin-off` will revoke shell and admin access, respectively.

**Do not manually use the `useradd` command to create new users, admin or otherwise!!!** If you are installing this on a fresh system like I told you too, root should be the only account on the system when you run the installer for the first time. All other users on a Grackle system should be created with `gruser` command, or they may end up "missing" features!

## Usage
Use the `grackle help` command to bring up the built-in documentation index.

Use the `shortcuts` command to bring up a quick cheat-sheet of keyboard shortcuts for bash & tmux.


## Updating
Once installed, all system updates are performed as normally via `apt`:
```
sudo apt update
sudo apt ugrade
```
Occasionally I will be updating this repo. To update to the latest version of Grackle, run:
```
sudo grinstall update
```
This command simply deletes `/home/grackle`, redownloads a fresh copy of this repo, and resets permissions. (Of course, if you have made any changes to the files in `/home/grackle` they will be lost, so make sure to back them up first!)
