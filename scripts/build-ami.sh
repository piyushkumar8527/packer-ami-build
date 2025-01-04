#!/bin/bash
sudo apt update -y
sudo apt install -y apache2
sudo mkdir /packer_status
cd /packer_status
sudo touch packer_executed