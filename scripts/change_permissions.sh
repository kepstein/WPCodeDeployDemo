#!/bin/bash
chown ec2-user:apache /var/www/html/WordPress
find /var/www/html/WordPress -type f -exec chmod 644 {} \;
find /var/www/html/WordPress -type d -exec chmod 754 {} \;
#chmod -R 644 /var/www/html/WordPress