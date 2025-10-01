# logs/nginx/

This directory is where Nginx dumps application-specific error logs.

To enable access logs for this application, uncomment the `access_log` parameter in this application's configuration file at `/etc/nginx/available/USERNAME.conf`, then run `grackle reset-web` to reset the server.

Global daemon logs are stored in `/var/log/nginx`. Global access logs can be enabled by uncommenting `access_log` in `/etc/nginx/nginx.conf`.

It is not recommended turning access logging on in production or sensitive environments!
