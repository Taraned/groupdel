#!/bin/bash
# Description: A small user managment system for the linux operating system
# Author:      Christoph Koschel
# Issues:      koschelch@elektronikschule.de
# Version:     1.0.0

source douseradd.sh
source douserdel.sh
source dogroupdel.sh


function main() {
    while :
    do
        MENU=$(dialog --stdout --menu "Select Option" 30 50 45 1 "New User" 2 "New Group" 3 "Delete User" 4 "Delete Group" 5 "Exit")
        case $MENU in
        1)
            douseradd
            ;;
        2)
            
            ;;
        3)
            douserdel
            ;;
        4)
            dogroupdel
            ;;
        *)
            exit 0
        esac
    done
}

main
