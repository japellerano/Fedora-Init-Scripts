#!/bin/bash

# Initial clean, update check, and upgrade
echo 'Upgrading:'
sudo dnf clean all && sudo dnf check-update && sudo dnf upgrade

# RPM Fusion Packages
echo 'Installing RPM Fusion packages'
su -c 'yum install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
