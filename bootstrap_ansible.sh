#!/bin/bash

# Get the latest version of ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

# Install boto so we can use the EC2 dynamic inventory script
sudo apt-get install python-boto

