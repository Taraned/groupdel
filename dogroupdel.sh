# Author: 

function dogroupdel() {
    ls
    cd bin/
    dialog --inputbox "Bitte Username eingeben:" Schnitzelwecken69
    username -$(kdialog --inputbox "Bitte Username eingeben:") Schnitzelwecken69
    dialog --inputbox
    dialog --stdout--
    echo $username
    mkdir usermanager
    cd usermanager
    git init
    ls
    ls -ls
    git status
    nano dogroupdel.sh
    groupdel "usermanager"
}

