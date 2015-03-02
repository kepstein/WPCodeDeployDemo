#!/bin/bash
isExistApp=`pgrep httpd`
if [[ -n  \$isExistApp ]]; then
   service httpd stop
fi
isExistApp=`pgrep mysqld`
if [[ -n  \$isExistApp ]]; then
    service mysqld stop
else 
	echo "mysqld service not found, failing gracefully to allow scripts to continue"
fi
