# Author: Raphael Reti

function add_group(){
  GRUPPE=`kdialog --inputbox "Gruppenname:"`
  if [ `grep "^${GRUPPE}:" /etc/group` ]; then
    kdialog --error "Fehler: Gruppe existiert bereits!"
  else
    kdialog --msgbox "Gruppe wurde angelegt!"
  fi
}
