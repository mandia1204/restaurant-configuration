#!/bin/bash
mkdir -p /opt/ssl/ /etc/ssl/private/ /etc/ssl/certs/
cd /opt/ssl/
openssl genrsa -out server.key 1024
openssl req -new -key server.key -out server.csr -subj "/C=PE/ST=Lima/L=Lima/O=Andia/OU=Andia Team/CN=restaurant"
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
mv server.key /etc/ssl/private/
mv server.crt /etc/ssl/certs/
