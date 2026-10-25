#!/bin/bash
if command -v figlet >/dev/null 2>&1; then
	echo " "
else
	sudo apt install figlet
fi

GREEN="\e[32m"
RESET="\e[0m"
message="Nginx Reverse Proxy Script"
echo -e "${GREEN}"
figlet "$message"
echo "created by @scripterxd"

echo "OPTIONS"
echo "1. Reverse proxy config"
echo "2. check available configs"
echo "3. Renew certificate"
echo "4. Get SSL/TLS certficate for my domain"
echo "5. Nginx status"
echo "6. Restart nginx"
read -p "Enter a number to choose an option: " number
echo -e "${RESET}"
