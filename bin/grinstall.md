# Grackle Installer Roadmap

A checklist of basic things that each installer module needs to eventually do:

## `grinstall base`
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

#### Other Packages
- ~~Prepare APT repos and config~~
- ~~Install ranger & copy config~~
- ~~Purge ntp and install chrony~~
- Set timezone and metadata
- ~~Install btop and htop~~
- ~~Install curl and tmux from backports~~
- set up TPM and tmux theme
- configure sshd
- ~~Install imagemagick~~
- Install vsftpd, enable to start on boot, and configure
- Install letsencrypt & certbot

#### Misc Configs
- ~~Prepare usergroups~~
- Import .dotfiles to /root and applicable existing users
- ~~Reset permissions on /home/grackle and all other applicable directories~~

## `grinstall mail`
- Install postfix and enable it to start on boot
- Default config: outgoing only, localhost only
- Install mailutils

## `grinstall nginx`
- Install nginx and enable it to start on boot
- Configure nginx
- Start nginx
- ~~Open ports 80 & 443 in UFW, flush and reload~~

## `grinstall php`
- Installs PHP to server and enable it to start on boot
- ~~Installs php-fpm syslog component~~
- Leftover per-account PHP configuration goes to 'grapp' command:
	- 'grapp' will configure PHP pool
	- 'grapp' will enable nginx routing to PHP socket

## `grinstall docker`
- Installs minimal Docker to server
- Leftover per-account Docker configuration goes to 'grapp' command:
	- 'grapp' will configure rootless Docker
	- 'grapp' will define app port (and check for conflicts)
	- 'grapp' will enable nginx routing to app port

## `grinstall web`
- ~~Runs both the `base` and `nginx` installers~~

## `grinstall full`
- ~~Runs installers for all packages~~

## `grinstall update`
- ~~Downloads clean fresh copy of Grackle from repo & resyncs permissions~~

## Patch Checklist
- Move grackledir from /home to /opt
- customization.md file detailing some of the ways you can tweak a Grackle-powered server
