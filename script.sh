#!/bin/bash
yum install squid -y
mkdir /etc/squid/regras
cp ./sites_bloqueados /etc/squid/regras
cp -n ./squid.conf /etc/squid/squid.conf
systemctl start squid
systemctl enable squid