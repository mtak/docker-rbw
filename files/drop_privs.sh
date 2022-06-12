#!/bin/ash

# Drop privs
getent passwd $UID >/dev/null 2>&1
if [[ $? -ne 0 ]]; then
  adduser -h /home/rbw -u $UID -D rbw
fi

chown -R $UID /tmp/rbw-$UID /home/rbw/ `tty`

exec su-exec rbw "$@"
