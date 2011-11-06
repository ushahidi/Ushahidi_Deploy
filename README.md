# Scripts for Unattended Deployments of Ushahidi_Web

## Debian 6.0 (Squeeze)

1. Run the following command:  
`wget -qO- --no-check-certificate https://raw.github.com/ushahidi/Ushahidi_Deploy/master/debian6.sh | bash`

2. Run through the installation procedure. For your database, use the following details:
    * Hostname: `localhost`
    * Username: `ushahidi`
    * Password: `ushahidi`
    * Database: `ushahidi`

## OVA Package

1. Download and install one of the following:
    * [VirtualBox](https://www.virtualbox.org/)
    * [VMware Player](http://www.vmware.com/products/player/)

2. Download and import [ushahidi.ova](http://sourceforge.net/projects/ushahidi/files/ushahidi.ova/download)

Some notes:

* Uses the [Open Virtualization Format](http://en.wikipedia.org/wiki/Open_Virtualization_Format) standard.
* All usernames and passwords are: `ushahidi`

## Amazon Web Services

* Search for `ami-23e32d4a` or `ushahidi`.
* Run `/home/reset/reset.sh` to delete everything and take the deployment back to a vanilla install.
* Run `/home/reset/reset_haiti.sh` to delete everything and install all the haiti data for use with testing.

## See Also

* [Ushahidi.com](http://www.ushahidi.com/)
* [Ushahidi_Web](https://github.com/ushahidi/Ushahidi_Web)
* [Ushahidi Virtual Machine Images](http://sourceforge.net/projects/ushahidi/files/)