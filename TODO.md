# Grackle Checklist

A running checklist of things I need to add or patch:

## Logging
- consolidate all user logs to ~/logs
- tweak default logrotate settings and finish integrating with application logs

## More Packages
- ~~Prepare APT repos and config~~
- Set timezone and metadata

## Misc Configs
- ~~Import .dotfiles to /root~~
- install npm/yarn and prep app accounts during `grapp new`
- more skel options for nginx configs, including for ssl generation

## Misc Patches
- merge `.bash_aliases` & `.bashrc` for users in /skel/home/, similar to the setup for root user.
- backport `.bashrc` updates from above to the `.bashrc` in root skel
- finish php 8.5 upgrade
- finish credits page on documentation site
- add customer contact info to .gracklevar

## Commands

### `grapp php-setup`
- Have it check for existing PHP setup before generating configs
- Add better support for running multiple PHP versions

### `grapp docker-setup`
- Have it set up rootless Docker on specified app account
- Have it update docker field in .gracklevar

### `grbuild php`
- Have it check for PHP config and run `grapp php-setup` if missing
- Copy files from skel/builds/php

### `grinstall docker`
***Requires Nginx***
- First checks to see if Nginx is installed and issues y/n warning if not
- Installs minimal Docker to server
- Leftover per-account Docker configuration goes to `grapp` command:
	- `grapp` will configure rootless Docker
	- `grapp` will define app port (and check for conflicts)
	- `grapp` will enable nginx routing to app port

### `grinstall ftp`
- ~~Install vsftpd, enable to start on boot, basic configurations~~
- Open FTP firewall ports
- Configure SSL for FTP
- Configure user for FTP daemon
- Configure chroot for users
