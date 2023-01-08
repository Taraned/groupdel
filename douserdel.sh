#!/bin/bash
#Version: 1.0
#Author: Niklas Haag

function douserdel(){
    USERNAME=$(dialog --stdout --inputbox "Gib den Usernamen ein" 10 40)
    if [ $(grep "${USERNAME}:" /etc/passwd | cut -d : -f 1 -) ];
        then
	SURE=$(dialog --stdout --inputbox "Willst du auch das zugehörige Heimatverzeichnis löschen? (J)a (N)ein" 10 40)

        case "$SURE" in 
        "J"|"j")
            dialog --stdout --infobox "Der Befehl lautet: userdel -r $USERNAME" 3 40
            ;;
        "N"|"n")
            dialog --stdout --infobox "Der Befehl lautet: userdel $USERNAME" 3 40
            ;;
        esac
  
    else
        dialog --stdout --infobox "Es gibt keinen User mit diesem Usernamen" 5 40
    fi
}
