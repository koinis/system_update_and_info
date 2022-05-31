#!/bin/bash

# System maintaince

echo -e "\n$(date "+%d-%m-%Y --- %T")
--- Starting work ...\n"

apt-get update    
apt-get -y upgrade

apt-get -y autoremove
apt-get autoclean

echo -e "\n$(date "+%T") \t Process
Terminated"


# Read the user input

echo "Do you want to see your system's info? (format (y) or (n)): "  
read answer

if [ $answer = y ]; then

        # return the following set of system information:
        
        # -Hostname information:
        echo -e "\e[31;43m***** HOSTNAME INFORMATION *****\e[0m"
        hostnamectl
        echo ""
        # -File system disk space usage:
        echo -e "\e[31;43m***** FILE SYSTEM DISK SPACE USAGE *****\e[0m"
        df -h  
        echo ""
        # -Free and used memory in the system:
        echo -e "\e[31;43m ***** FREE AND USED MEMORY *****\e[0m"
        free   
        echo ""
        # -Logged-in users:  
        echo -e "\e[31;43m***** CURRENTLY LOGGED-IN USERS *****\e[0m"
        who    
        echo ""


else 
        echo "Abort"
fi
