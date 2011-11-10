# Scripts for Unattended Deployments of Ushahidi_Web

## Debian 6.0 (Squeeze)

1. Run the following command:  
`wget -qO- --no-check-certificate https://raw.github.com/ushahidi/Ushahidi_Deploy/master/debian6.sh | bash`

2. Run through the installation procedure. For your database, use the following details:
    * Hostname: `localhost`
    * Username: `ushahidi`
    * Password: `ushahidi`
    * Database: `ushahidi`

## Amazon Web Services

* Search for `ami-23e32d4a` or `ushahidi`.
* Run `/home/reset/reset.sh` to delete everything and take the deployment back to a vanilla install.
* Run `/home/reset/reset_haiti.sh` to delete everything and install all the haiti data for use with testing.

## See Also

* [Ushahidi.com](http://www.ushahidi.com/)
* [Ushahidi_Web](https://github.com/ushahidi/Ushahidi_Web)