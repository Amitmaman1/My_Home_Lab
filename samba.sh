#!/bin/bash
echo "Updating package list"
sudo apt-get update

# Install Samba and Samba common bin
sudo apt-get install samba samba-common-bin -y

# Add the shared folder configuration to smb.conf
echo "
[shared_folder]
path = /path/to/your/folder  # Replace with the actual path
browseable = yes
writable = yes
guest ok = yes
" | sudo tee -a /etc/samba/smb.conf

# Restart Samba service to apply changes
sudo systemctl restart smbd

# Add Samba user (replace 'username' with the desired username)
sudo smbpasswd -a username

# Set the correct permissions for the shared folder (replace with your folder path)
sudo chmod -R 777 /path/to/your/folder
