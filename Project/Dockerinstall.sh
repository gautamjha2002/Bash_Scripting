#!/bin/bash
echo "Hello and welcome to  installation of docker in ubuntu system"
sleep 2s
echo "To install Docker in your system we want access of your root account."
echo "Please provide your password when needed"
echo 
echo

echo "Now instalation of Docker started."
echo
echo "Uninstalling older version of docker available in your machine"
sudo apt-get remove docker docker-engine docker.io containerd runc -y
echo "uninstallation done."
echo
echo

echo "Updating your packages."
sudo apt-get update
echo
echo
echo "Updation done."
echo
echo 
echo "installing ca-certificates"
sudo apt-get install ca-certificates curl gnupg lsb-release -y
echo
echo
echo "Adding Docker's official GPG key:"
echo
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg -y
echo
echo
echo "Setting up the stable repository"
echo
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable nightly test" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo
echo
echo "Installing Docker engine"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
echo
echo

echo "Congratulation Docker is installed in your machine."
echo
echo
echo
echo "Now performing some Post installation steps."
sudo groupadd docker
echo "Adding user to docker group"
sudo usermod -aG docker $USER
echo "Post installation steps done."
echo
echo
echo "Thankyou for visiting."
echo
echo
echo "You need to restart your machine to work properly with docker"
echo
echo
echo
echo "Restarting your machine in 5 seconds."
sleep 5s
sudo reboot