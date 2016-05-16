#!/bin/bash
# general good practice (stop on error, missing variables):
set -eu

# Creating user: $USER ($UID:$GID)
#groupadd --system --gid=$GID $USER && useradd --system --create-home --gid=$GID --uid=$UID $USER && \

chmod -R 777 $APACHE_LOG_DIR && exec /usr/sbin/apache2 -DFOREGROUND