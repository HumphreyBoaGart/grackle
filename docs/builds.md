# Integrated Build Utilities

`bin/grbuild` is for deploying additional software & generating application skeletons. Like the other shell scripts that make up Grackle, `grbuild` is easily modified to suit your specific environment.


## grbuild codex (USER|APPNAME)

Configures specified user or application to support ChatGPT Codex CLI.

Append an optional **USER** or **APPNAME** to skip interactive mode.

**Note:** Requires Homebrew. Run `grinstall brew` to install Grackle's Homebrew component. You will also have to run `brew install codex` as your `linuxbrew` user account. Working on a simpler solution.


## grbuild html APPNAME

Generates a basic HTML skeleton for the specified application.

Append an optional **APPNAME** to skip interactive mode.


## grbuild php APPNAME

Generates a PHP configuration for the specified application.

Append an optional **APPNAME** to skip interactive mode.

**Note:** Requires PHP. Run `grinstall php` to install Grackle's PHP component.
