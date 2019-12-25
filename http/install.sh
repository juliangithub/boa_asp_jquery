#!/bin/bash
USERID=`id -u`;
if [ ${USERID} -ne 0 ]; then
	echo "need root privilege !";
	exit;
fi
cp -rf src/boa /usr/local/bin/
mkdir -p /etc/boa
cp -rf boa.conf /etc/boa/
cp -rf mime.types /etc/boa/
mkdir -p /var/www
cp -rf ../www/index.html /var/www
mkdir -p /var/log/boa

