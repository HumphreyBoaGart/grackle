# User Management in Grackle

**Users** in Grackle are not stored in a separate database anywhere on the system, they are simply normal Linux accounts.

`bin/gruser` is the shell script which handles managing user accounts in a Grackle system. Like the other shell scripts that make up Grackle, `gruser` is easily modified to suit your specific environment.


## Creating Users

### gruser new USER

To create a new user account, run the `new` command, and fill in the prompts.

Append an optional **USER** to skip interactive mode.


## Removing Users

### gruser delete USER

Deletes the specified application account, but preserves the data so that the `new` command can recreate the account if desired.

Append an optional **USER** to skip interactive mode.


### gruser purge USER

The same as the `delete` command, except that it goes scorched earth and forever deletes everything associated with the application from the system.

Append an optional **USER** to skip interactive mode.


## Utility Commands

### gruser fix-perms USER

Resets user ownership over home directory files and chmods everything to 600/700.

Append an optional **USER** to skip interactive mode.


## Service Configuration

There are a handful of commands for deploying common web services & technologies:


### gruser (admin-on|admin-off) USER

Grants admin access to the specified user account.

Append an optional **USER** to skip interactive mode.


### gruser (brew-on|brew-off) USER

Grants the specified user account access to Homebrew.

Append an optional **USER** to skip interactive mode.

**Note:** Requires Homebrew. Run `grinstall brew` to install Grackle's Homebrew component.


### gruser codex-setup USER

Configures specified user account to support ChatGPT Codex CLI.

Append an optional **USER** to skip interactive mode.

**Note:** Requires Homebrew. Run `grinstall brew` to install Grackle's Homebrew component.


### gruser (shell-on|shell-off) USER

Turns on and off shell access for the specified user account.

Append an optional **USER** to skip interactive mode.
