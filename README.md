# Grackle
Simple terminal-based webserver management with minimal dependencies.

Currently only tested to work in Debian.

***This software is still in very early stages, and will probably not be useful to anyone but myself for a little bit. Check back later, or look at the [current checklist](bin/grinstall.md) for more info.***

## How It Works

Grackle is a small package of shell scripts which lives inside your `/opt/` directory, designed to work as seamlessly as possible with *"traditional"* Linux commands for portability. Virtually everything piggybacks on common off-the-shelf Linux components. Third-party packages are picked with a bias towards minimal dependencies & low resource consumption. All your configuration files, account data, hosted web sites, apps, etc, are stored in their respective stock directories elsewhere on the system. It stores very little local data itself beyond the [shell scripts](bin/) and [skeleton directories](skel/). There is no central database or any sort of internal account tracking *(such as in cPanel)*, as those with eyes to see know that these things are already being performed by your operating system.

There are two types of accounts in a Grackle system, **user accounts** and **app accounts**. Users are the people who log into your system directly to do whatever on it. Apps are for any application or site you are hosting. Both types of accounts are simply normal Linux users sorted into groups, and whom have uniquely configured `/home/` directories to match their differing needs. When you create a new account with Grackle *(whether it be user or app account)* it pulls a skeleton from [skel/home](skel/home/) and it's ready to go.

The management interface? You have one already, it's called [bash](https://bestpoint.institute/tools/bash) and [SSH](https://bestpoint.institute/tools/ssh). The [bin/](bin/) directory with all the Grackle scripts is automatically part of your $PATH now. To make the shell less daunting, I've packaged a bunch of aliases and styling tricks, along with Tmux. That is your account portal. As far as the services Grackle sets up *(nginx, php, rsyslog, etc)*, the script is just running `apt install` and then copying some files to `/etc/` from [skel/etc/](skel/etc/).

That's it. It is deliberately simple for the sake of performance on old & new machines alike.

## Why You Want This

Imagine self-hosting not only your own web sites, but any browser-based web application. This type of DIY software independence is one way of preserving your privacy and personal security, as well as potentially saving you lots of money.

## Installation

### Requirements

- Factory Debian 12 (Bookworm) install, no GUI
- A root user account
- Git

### Recommended

- A properly set hostname that matches the FQDN specified for your server's reverse DNS

### Instructions
Run the following commands to install Grackle on your machine:
```
git clone https://github.com/HumphreyBoaGart/grackle /opt/grackle
chmod u+rwx,g-rwx,o-rwx /opt/grackle/bin/grinstall
/opt/grackle/bin/grinstall base
```

### First-Time Configuration

#### Admin User Account(s)
***Do not log out of the terminal after running the installer, because you may be locked out!*** You need to create an administrative user for yourself first to manage the system, as root logins are disabled at this point in the install process.

While the installer is designed to only be used as root/sudo, it uses Debian's stock `adm` usergroup on your system so anyone within the group can run the other Grackle commands. This is to minimize the need for dangerous things like remote root access. To create an admin account, run the `gruser` utility thrice. These three commands 1) create the account, 2) grant it SSH access, and 3) drop it in the admin usergroup:
```
sudo gruser new USERNAME
sudo gruser shell-on USERNAME
sudo gruser admin-on USERNAME
```
The flags `shell-off` and `admin-off` will revoke shell and admin access, respectively.

Password authentication over SSH is disabled by default on admin users, meaning ***you have to set up a valid public/private key pair to use the account before you switch, or you will be locked out!***

Also do not forget to add your new admin user to the sudoers file with `visudo` or you will not be able to configure or even update your machine unless your datacenter gives you a browser terminal. Just run `visudo` and add your user there at the bottom:
```
USERNAME    ALL=(ALL:ALL) ALL
```

#### Layered Admin Permissions
Keep in mind that all Grackle commands are just **stacks of shell commands**, or **macros**. Some of these commands still require root/sudo to function. **If your admin user does not have sudo powers, it will only have "partial" admin access!** A detailed explanation of this layering is included in [bin/README.md](bin/README.md).

#### On Pre-Existing Accounts
If you are installing this on a fresh system like I told you to, root should be the only account on the system when you run the installer for the first time. All other users on a Grackle system should be created with `gruser` command *(unless you are manually adding system services)* or they may end up "missing" features. **There is no function to convert pre-existing accounts, nor will there be.** If you used a temporary sudo user to run the installer, just use `gruser` to create a new permanent account, and delete the temp.

## Usage
Once this system is set up and configured, ongoing usage is a relative breeze:

Use the `grackle help` command to bring up the built-in documentation index.

Use the `shortcuts` command to bring up a quick cheat-sheet of keyboard shortcuts for bash & tmux.


## Updating A Grackle System
Once installed, all system updates are performed as normally via `apt`:
```
sudo apt update
sudo apt ugrade
```
Occasionally I will be updating this repo. To update to the latest version of Grackle, run:
```
sudo grinstall update
```
This command simply deletes `/opt/grackle`, redownloads a fresh copy of this repo, and resets permissions. *(Of course, if you have made any changes to the files in `/opt/grackle` they will be lost, so make sure to back them up first!)*

If you need to update existing files in `/etc/` with versions from the newest Grackle release, in most cases you can just rerun the installer... though it will overwrite customizations. However, be forewarned it might require a manual touch if these two commands do not work:
```
sudo grinstall update
sudo grinstall MODE
```
Otherwise there is no real upgrade path yet. I'm rebuilding machines so often to test automated package installation that truth be told, I haven't even had too many of my machines fall out of date. Eventually, however, it will be sorted out.
