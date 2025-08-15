# Grackle Installer Roadmap

A checklist of basic things that each installer module needs to eventually do, and related things that need to be fixed.

## Main Installer

### `grinstall base`
Minimum installer package, grabbing the barest dependencies for Grackle to function.

#### Firewall
- ~~Install UFW and enable it to start on boot~~
- ~~Deny all incoming & outgoing connections~~
- ~~Open base ports~~
- ~~flush and reload~~

#### Logging
- ~~Neuter journald~~
- ~~Install rsyslog and enable it to start on boot~~
- consolidate all user logs to ~/logs
- ~~consolidate all system logs to /var/log~~
- ~~have option to consolidate all system logs to /tmp/log~~
- Install & configure logrotate
- trim up logging based on prototype server results

#### More Packages
- ~~Prepare APT repos and config~~
- ~~Install ranger & copy config~~
- ~~Purge ntp and install chrony~~
- Set timezone and metadata
- ~~Install btop and htop~~
- ~~Install curl and tmux from backports~~
- ~~set up TPM and tmux theme for user & app skels~~
- ~~configure sshd~~
- ~~Install imagemagick~~
- Install & configure fail2ban

#### Outgoing Mail
- Install postfix and enable it to start on boot
- Default config: outgoing only, localhost only
- Install mailutils and open outgoing firewall port

#### Misc Configs
- ~~Prepare usergroups~~
- ~~Import .dotfiles to /root~~
- ~~Reset permissions on /home/grackle and all other applicable directories~~

## A-la-carte Installers

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

### `grinstall mail`
- Incoming mail server; figure out later

### `grinstall nginx`
- ~~Install nginx and enable it to start on boot~~
- ~~Configure nginx and default zones, reload & restart~~
- ~~Open ports 80 & 443 in UFW, flush & reload~~
- ~~Install Certbot~~
- Leftover per-account Nginx configuration goes to `grapp` command:
	- ~~`grapp` will configure per-app Nginx zones~~
	- ~~`grapp` will grant Nginx user access to app groups~~
	- `grapp` will configure per-app SSL certs

### `grinstall php`
***Requires Nginx***
- First checks to see if Nginx is installed and issues y/n warning if not
- ~~Installs PHP to server and enable it to start on boot~~
- ~~Installs php-fpm syslog component~~
- Leftover per-account PHP configuration goes to `grapp` command:
	- ~~`grapp` will configure PHP pool~~
	- ~~`grapp` will enable nginx routing to PHP socket~~
	- `grapp php-setup` will do a better job slipping PHP powers to accounts

## Metapackages

### `grinstall web`
- ~~Runs both the `base` and `nginx` installers~~

### `grinstall full`
- ~~Runs installers for all packages~~

### `grinstall update`
- ~~Downloads clean fresh copy of Grackle from repo & resyncs permissions~~

## Misc Patches
- ~~Move grackledir from /home to /opt~~
- customization.md file detailing some of the ways you can tweak a Grackle-powered server
- merge `.bash_aliases` & `.bashrc` for users in /skel/home/, similar to the setup for root user.
- backport `.bashrc` updates from above to the `.bashrc` in root skel
- patch tmux/tpm first-time initialization bug
