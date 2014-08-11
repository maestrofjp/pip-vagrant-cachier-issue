#!/bin/sh

echo "Set sensible OS env defaults ..."
locale-gen en_US.UTF-8
update-locale LANG=en_US.UTF-8

echo "Install PIP"
cd /home/vagrant
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py

echo "Install lastest version of PIP"
pip install -e git+https://github.com/pypa/pip.git
pip -V

echo "Install Requirements via PIP"
cd /home/vagrant
pip install --cache-dir=/var/cache/pip -r /vagrant/development-requirements.txt

echo "SUCCESS!"