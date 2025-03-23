#!/bin/bash
# Not needed anymore, no local registry *sobbing face*
if [ -n "$1" ] && [ -n "$2" ]; then
    htpasswd -Bb /home/user1/secrets/htpasswd/user_data "$1" "$2"
    echo "Success! Added user $1"
else
    echo "To add a user, type: ./add_htpasswd_user <username> <password>"
fi
