#!/bin/sh

echo "Set sensible OS env defaults ..."
locale-gen en_US.UTF-8
update-locale LANG=en_US.UTF-8

echo "Install git and setuptools"
apt-get install -y git python-setuptools

echo "Install bleeding edge of PIP"
cd /home/vagrant
sudo git clone https://github.com/pypa/pip.git
cd ./pip
sudo python setup.py install
pip -V

echo "Install Requirements via PIP"
cd /home/vagrant
# This command hangs
sudo pip install --cache-dir /var/cache/pip -r /vagrant/development-requirements.txt
echo "SUCCESS!"