#!/bin/bash -e

# Fix temporary directory permissions
chmod 1777 /tmp

# Install (beta) Mono package key
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/ubuntu beta-xenial main" | sudo tee /etc/apt/sources.list.d/mono-official-beta.list
apt-get update

# Install (beta) Mono development tools
apt-get install -y mono-devel

# Install zip
apt-get install -y zip

# Clean up
apt-get clean
apt-get autoclean
apt-get autoremove --purge
