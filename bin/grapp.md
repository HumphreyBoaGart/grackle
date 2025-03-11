# Grackle App Management Roadmap

A checklist of basic things that the App Management utility needs to eventually do, and related things that need to be fixed.

## Commands

### `grapp new`
- ~~Populate homedir with skeleton dir~~
- ~~Set initial permissions on new homedir~~

### `grapp delete`
- ~~Delete application account, preserving data~~

### `grapp purge`
- ~~Delete application account and all associated data~~

### `grapp web-on|web-off`
- ~~Enables & disables web access for app~~

### `grapp php-setup|php-off|php-on`
- ~~Sets up/disables/enables php access for app~~
- `grapp php-setup` needs to automatically populate pool config with app's domain name where necessary

### `grapp fix-perms|fix-perms-deep`
- ~~Two levels of permissions fixing scripts that can be called manually or automatically~~

## Misc Patches
- Throw together default landing page for new apps
- Tweak ~/.profile welcome message to be more geared for app accounts instead of user accounts
