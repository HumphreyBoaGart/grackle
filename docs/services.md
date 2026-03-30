# Linux Services in Grackle

The core functionality of Grackle is provided by the **services** that it configures. Important ones include:


## bash & ssh

The only administrative interface a Linux system really needs, and one that has been standardized for so long that there is no shortage of documentation or modifications for it.

Scared of the command line? Don't be. Read [this tutorial](https://bestpoint.institute/tools/bash) to get started.

For more information on how to use SSH, check this [cheat sheet](https://bestpoint.institute/tools/ssh) for a rundown on the most important parts.


## byobu

Bash over SSH is great, until your connection drops, or until you need to have multiple terminal panes open. To solve this, we bundle the modern terminal multiplexer [Byobu](https://www.byobu.org). Byobu not only keeps your session alive, but streamlines the use of multiple concurrant Bash terminals.

Every user & application account can be configured to launch Byobu upon login. Just uncomment **line 18** in `~/.profile` to vastly improve your terminal experience!


## docker

It's not in the production build yet, but we have a proper [Rootless Docker](https://docs.docker.com/engine/security/rootless) component in the works.

While we aren't a huge fan of the Docker ecosystem, many modern servers need a way to safely run isolated Docker containers. We've got you.


## fingered

Our `finger://` and `fingers://` services are powered by [Fingered](https://github.com/noveltylanterns/fingered).


## geomyidae

Our `gopher://` services are powered by [Geomyidae](https://git.codemadness.org/geomyidae/).


## git

If it wasn't for [Git](https://git-scm.com), you would not be able to so conveniently install & update Grackle in the first place!

Our application environments were also designed in a way to enable easy integration of Git workflows.


## homebrew

We didn't want to burden this down with too many extra package managers, but [Homebrew](https://brew.sh) was too good to pass up.

We provision a dedicated user to hold Homebrew packages, so you can grant your users & applications safe read-only access to the binaries as need be.


## molly brown

Our `gemini://` services are powered by [The Unsinkable Molly Brown](https://github.com/LukeEmmet/molly-brown).


## nginx & certbot

Our `http://` and `https://` services are powered by [Nginx](https://nginx.org).

[Certbot](https://certbot.eff.org) provides the free SSL certificates, because you should never have to pay for an SSL certificate.


## php & composer

Many moons ago, this stack began as a makeshift [PHP](https://www.php.net) development platform for supporting a pair of gaming blogs that had upwards of a million visitors a month. While the sites no longer exist, the technology that powered them has become the server management suite you see before you today.

PHP is why we are here, and the ecosystem has only gotten infinitely better in the years since.

[Composer](https://getcomposer.org/) is bundled for rapid application scaffolding.


## postfix & dovecot

Our mailserver stack is powered by [Postfix](https://www.postfix.org) and [Dovecot](https://dovecot.org), with validation services performed by [OpenDKIM](http://www.opendkim.org) and [OpenDMARC](http://www.trusteddomain.org/opendmarc/).


## rsyslog & logrotate

We're traditionalists around here. That's why our installer goes out of it's way to **neuter journald**, and sets you up with the simpler & more flexible [rsyslog](https://www.rsyslog.com).

Log pruning is powered by [logrotate](https://github.com/logrotate/logrotate). *(Though it is currently not configured to prune very well. Working on it!)*


## sass

We aren't big fans of Javascript. That's why our installer pulls a copy of [Dart Sass](https://sass-lang.com/dart-sass/) right into `/opt/` so all system users have access to blazing-fast stylesheet compiling.

Because all other versions are inferior.


## sql

Our current database offerings are [PostgreSQL](https://www.postgresql.org) and [SQLite](https://sqlite.org), with MySQL/MariaDB and a few others on the way.

[Holland](https://hollandbackup.org) is also on the way for automated database backup services.


## ufw & fail2ban

All Grackle servers are secured with [UFW](https://launchpad.net/ufw) and [fail2ban](http://www.fail2ban.org) to keep out riff-raff. These are in fact the first two services the installer configures before anything else, so you can build with peace of mind.
