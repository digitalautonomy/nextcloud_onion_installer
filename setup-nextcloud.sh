#!/usr/bin/env bash

HSDIR_ROOT=/var/lib/tor

set -e

source utils.sh

sudo ./setup-nextcloud-with-permissions.sh

#Retrieve the Hidden Service address configured.
ONION_URL=$(sudo cat $HSDIR_ROOT/nextcloud/hostname)
NEXTCLOUD_PORT=81
HS_URL="http://${ONION_URL}"    
yellow_msg "\n\nThe Onion Hidden Service address was copied to your clipboard.\n"
printf "$HS_URL\n"
printf "Paste the address in your Tor browser.\n\n"
echo ${HS_URL} | xclip -selection c

FF_EXIST=$(which firefox)
if [ x$FF_EXIST == "x" ]; then
    red_msg "\n\nFirefox is not installed.\n"
else        
    firefox http://127.0.0.1:$NEXTCLOUD_PORT &
fi