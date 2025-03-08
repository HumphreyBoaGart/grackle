# Grackle
Simple bash-based webserver management with minimal dependencies.

**This software is still in very early stages, and will probably not be useful to anyone but myself for a little bit. Check back later.**

## Installation

### Requirements

- Factory Debian 12 (Bookworm) install, no GUI
- Git

### Instructions
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
This command simply deletes `/home/grackle`, redownloads a fresh copy of this repo, and resets permissions. (Of course, if you have made any changes to the files in `/home/grackle` they will be lost, so make sure to back them up first.)
