pip-vagrant-cachier-issue
=========================

INSTALLATION
------------

Install your OS specific version of VirtualBox:

    https://www.virtualbox.org/wiki/Downloads

N.B. The VirtualBox version in apt-get or yum repositories is usually very out of date.

Install Vagrant:

    http://www.vagrantup.com/downloads.html

N.B. The Vagrant version in apt-get or yum repositories is usually very out of date. Current version
at the time of writing this is 1.6.3.

Install Vagrant-Cachier at the console:

  vagrant plugin install vagrant-cachier
  

DEMOSTRATING THE TEST CASE
--------------------------

If you have all the OS dependencies install from above, just run from the directory where you cloned 
this project into:

    vagrant up
