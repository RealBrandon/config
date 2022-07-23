#!/bin/bash

echo
echo "Please run this script as ROOT!!!!!!!!"
echo "Press Ctrl+C if you want to terminate the installation process now."
echo
for i in {5..1}
do
	echo -en "Installation about to start in "$i"s...\r"
	sleep 1
done
echo
echo

# Install necessary prerequisite packages
echo "Starting to install necessary prerequisite packages..."
sleep 1
apt-get update
apt install -y \
	ca-certificates \
	curl \
	gnupg \
	lsb-release
echo

# Add Docker's official GPG key
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up the Docker repo
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
$(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install the latest version of Docker Engine
echo "Starting to install the latest version of Docker Engine..."
sleep 1
apt-get update
apt install -y \
	docker-ce \
	docker-ce-cli \
	containerd.io \
	docker-compose-plugin
echo

# If receive a GPG error when running apt-get update
# Try the following command and run this script again afterwards
# chmod a+r /etc/apt/keyrings/docker.gpg

# Test if Docker Engine is installed correctly
echo "Starting to test the installation of Docker Engine..."
sleep 1
docker run hello-world && echo "Docker Engine is successfully installed. Enjoy!"

