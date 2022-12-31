#!/bin/bash

function douseradd() {
    OPTIONS="-m"
    CON=0
    until [ $CON -eq 1 ]
    do
        NAME=$(dialog --inputbox --stdout "Enter a username" 10 30)
        if [ $? -eq 1 ]; then
            return
        fi

        if [ $(grep "^${NAME}:" /etc/passwd | cut -d : -f 1 -) ]; then
            dialog --msgbox --stdout "Username already exists" 10 30
        else
            CON=1
        fi
    done

    dialog --yesno "Should the user be added to a group" 10 30
    if [ $? -eq 0 ]; then
        CON=0
        until [ $CON -eq 1 ]
        do
            GRP=$(dialog --inputbox --stdout "Enter a group name" 10 30)
            if [ $? -eq 1 ]; then
                return
            fi

            if [ $(grep "^${GRUPPE}:" /etc/group) ]; then
                OPTIONS=$OPTIONS" -g "$GRP
                CON=1
            else
                dialog --msgbox --stdout "The Group does not exists" 10 30
            fi
        done
    fi

    dialog --yesno "Do you want to add a comment to the user?" 10 30
    if [ $? -eq 0 ]; then
        CON=0
        until [ $CON -eq 1 ]
        do
            COMMEMT=$(dialog --inputbox --stdout "Enter the comment" 10 30)
            if [ $? -eq 1 ]; then
                return
            fi

            OPTIONS=$OPTIONS" -c \"${COMMEMT}\""
            CON=1
        done
    fi

    OPTIONS=$OPTIONS" "$NAME

    echo  "useradd "$OPTIONS
    sleep 10

    # "useradd -m -g $GRUPPE -c \"$KOMM\" $USERNAME"
}
