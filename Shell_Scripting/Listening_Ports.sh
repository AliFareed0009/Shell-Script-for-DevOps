#!/bin/bash

#List all listening ports and the assiciated services
#sudo apt install net-tools (if netsat tools are not installed the uncomment this line)

netstat -tuln | grep LISTEN

#   Explanation

#nettstat -tuln  -   Lists all TCP and UDP listening ports
#grep LISTEN -   Filters and output to show only listening ports