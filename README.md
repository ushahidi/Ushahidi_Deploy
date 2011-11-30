# Scripts for Unattended Deployments of Ushahidi_Web

## Debian 6.0 (Squeeze) Automated Installation Script

1. Run the following command:  
`wget -qO- --no-check-certificate https://raw.github.com/ushahidi/Ushahidi_Deploy/master/debian6.sh | bash`

2. Run through the installation procedure. For your database, use the following details:
    * Hostname: `localhost`
    * Username: `ushahidi`
    * Password: `ushahidi`
    * Database: `ushahidi`

## Open Virtualization Format (OVF) Package

### Download

* [Ushahidi_Web-x86_64.ova](http://sourceforge.net/projects/ushahidi/files/Ushahidi_Web-x86_64.ova/download)

### Login Credentials

* Unix Username: `user`
* Unix Password: `user`
* Unix Root Password: `root`
* MySQL Username: `ushahidi`
* MySQL Password: `ushahidi`
* MySQL Root Password: blank
* Application Directory: `/var/www/`

### Notes

* Based on [Debian 6.0 Squeeze](http://www.debian.org/)
* Recommended to be used with [VirtualBox](https://www.virtualbox.org/)
* Read more about [Open Virtualization Format](http://en.wikipedia.org/wiki/Open_Virtualization_Format) on the Wikipedia

## Amazon Web Services

* Search for `ami-23e32d4a` or `ushahidi`.
* Run `/home/reset/reset.sh` to delete everything and take the deployment back to a vanilla install.
* Run `/home/reset/reset_haiti.sh` to delete everything and install all the haiti data for use with testing.

## See Also

* [Ushahidi.com](http://www.ushahidi.com/)
* [Ushahidi_Web](https://github.com/ushahidi/Ushahidi_Web)