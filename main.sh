#!/bin/bash

source douseradd.sh

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
            ;;
        4)
            ;;
        *)
            exit 0
        esac
    done
}

main
