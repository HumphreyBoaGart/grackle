# Grackle Installer Roadmap

A list of things that each installer module needs to eventually do:


## 'base' Installer

#### Firewall
- Install UFW and enable it to start on boot
- Deny all incoming connections, flush and reload

#### Logging
- Neuter journald
- Install rsyslog and enable it to start on boot
- consolidate all user logs to ~/logs
- consolidate all system logs to /var/log
- have option to consolidate all system logs to /tmp/log

#### Other Packages
- Prepare APT repos and config
- Install curl from backports
- Install btop, ranger, tmux, chrony
- Install vsftpd, enable to start on boot, and configure
- Install letsencrypt & certbot

#### Misc Configs
- Prepare usergroups
- Import .dotfiles to /root and applicable existing users
- Reset permissions on /home/grackle and all other applicable directories


## 'mail' Installer
- Install postfix and enable it to start on boot
- Default config: outgoing only, localhost only
- Install mailutils


## 'nginx' Installer
- Install nginx and enable it to start on boot
- Configure nginx
- Start nginx
- Open ports 80 & 443 in UFW, flush and reload


## 'php' Installer
- Installs PHP to server and enable it to start on boot
- Leftover per-account PHP configuration goes to 'grsites' command:
	- 'grsites' will configure PHP pool
	- 'grsites' will enable nginx routing to PHP socket


## 'docker' Installer
- Installs minimal Docker to server
- Leftover per-account Docker configuration goes to 'grsites' command:
	- 'grsites' will configure rootless Docker
	- 'grsites' will define app port (and check for conflicts)
	- 'grsites' will enable nginx routing to app port


## 'web' Installer
- Runs both the -base and -nginx installers


## 'full' Installer
- Runs installers for all packages
