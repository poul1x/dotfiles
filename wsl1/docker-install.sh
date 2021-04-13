#!/bin/bash
wget -O docker-cli.deb https://download.docker.com/linux/debian/dists/buster/pool/stable/amd64/docker-ce-cli_19.03.13~3-0~debian-buster_amd64.deb
sudo dpkg -i docker-cli.deb
rm -f docker-cli.deb

sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
