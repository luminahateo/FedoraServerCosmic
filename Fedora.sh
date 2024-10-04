#!/bin/sh

# Update
sudo dnf update -y

# Install COPR
sudo dnf copr enable ryanabx/cosmic-epoch
sudo dnf install cosmic-desktop -y

# Install Add-on
sudo dnf group install base-x -y

# selinux
sudo nano /etc/sysconfig/selinux
# SELINUX=enforcing >> SELINUX=disabled
# sudo grubby --update-kernel ALL --args selinux=0

systemctl get-default
systemctl set-default graphical-target
systemctl enable cosmic-greeter
