#!/bin/bash

# Update system packages and clean up unnessary packages
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove -y && sudo apt-get clean
echo "System packages updated and cleaned up"

#   Explanation
# sudo  -   Super User previliges
# apt-get update  -   Updates the package
# apt-get upgrade -y  -   Upgrades all installed packages
# apt-get autoremove -y   -   Removes unnecessary packages
# apt-get clean   -   Cleans up the package cache
# echo "System packages updated and cleaned up"   -   Outputs a message indicating the completion of the update and cleanup   