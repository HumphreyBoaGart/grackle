# Grackle
Simple bash-based webserver management with minimal dependencies.

**This software is still in very early stages, and will probably not be useful to anyone but myself for a little bit. Check back later.**


## Dependencies
- Ideally a factory Debian install, no GUI
- Git


## Installation Instructions

```
cd /home
sudo git clone https://github.com/HumphreyBoaGart/grackle grackle
sudo chmod u+rwx,g-rwx,o-rwx grackle/bin/grinstall
sudo grackle/bin/grinstall MODE
```

Where "MODE" is any one of the following install types:
  * **base** (Bare minimum Grackle components)
  * **web** (Base package + Nginx web server)
  * **full** (All components)

Alternatively, "MODE" can be replaced with a la carte package names:
  * **docker** (Docker component)
  * **nginx** (Nginx component)
  * **php** (PHP component)
