# /public_html/

The `/public_html/` directory is a predefined spot in your application's home directory for storing application code that you need to have visible to the web server.

***All files in this directory should be considered public to the outside world!*** Unless you have secured your code in this directory through other means, you should store sensitive data elsewhere, such as in a database or [/private_html/](../private_html)

This path is hardcoded into the `grapp`, `grinstall` commands, as well as the entire Nginx module, and should not be changed unless you really know what you are doing.
