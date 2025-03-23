#!/bin/sh
if [ -f /etc/mysql/conf.d/custom.cnf ]; then
    chmod 644 /etc/mysql/conf.d/custom.cnf
fi
exec "$@"
