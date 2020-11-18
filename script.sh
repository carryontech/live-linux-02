#!/bin/bash
yum install squid -y
mkdir /etc/squid/regras
cp /tmp/live-linux-02/sites_bloqueados.txt /etc/squid/regras
cp -n /tmp/live-linux-02/squid.conf /etc/squid/squid.conf
systemctl start squid
systemctl enable squid