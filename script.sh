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

number=-3

while [ "$number" -ne 0 ]; do
	echo "OPTIONS"
	echo "0. exit"
	echo "1. Reverse proxy config"
	echo "2. check available configs"
	echo "3. Renew certificate"
	echo "4. Get SSL/TLS certficate for my domain"
	echo "5. Nginx status"
	echo "6. Restart nginx"
	read -p "Enter a number to choose an option: " number

	if [ "$number" -eq 2 ]; then
		if command -v nginx >/dev/null 2>&1; then
			echo " "
		else 
			sudo apt install nginx
		fi
		ls -l /etc/nginx/sites-available
	fi

	if [ "$number" -eq 5 ]; then
		if command -v nginx >/dev/null 2>&1; then
			echo " "
		else
			sudo apt install nginx
		fi
		sudo systemctl status nginx
	fi

done 
echo "Exited successfully."
echo -e "${RESET}"
