# Nextcloud Onion Installer
These scripts would help you setup a Nextcloud instance that would be accessible via Tor Onion Services. That means that even if you don’t have a public IP you can host the Nextcloud instance and access it anywhere in the world as long as you have a Tor connection. This can be done with the Tor Browser, with Nextcloud desktop client configured to use a Tor connection or Nextcloud Android client with Orbot.

## Using the script
At the moment this script has been tested with Debian 10, but it should work in other Debian-like distributions as well.

```
git clone https://github.com/digitalautonomy/nextcloud_onion_installer.git
cd nextcloud_onion_installer
./setup-nextcloud.sh
```
