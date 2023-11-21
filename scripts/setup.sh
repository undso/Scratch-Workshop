#!/bin/sh

# Das Skript soll das Setup eines neuen Raspi übernehmen.

# Die Funktion update_system bringt das System mittels apt auf den aktuellen Stand
update_system() {
  echo 'System auf den aktuellen Stand bringen...'
  sudo apt update && sudo apt upgrade -y
  sudo apt dist-upgrade -y
  sudo apt autoremove -y && sudo apt autoclean -y
}

# Die Funktion config_system richtet das Betriebssystem ein
config_system() {
  echo 'Einrichten des Betriebssystems...'
  sudo localectl set-locale LANG=de_DE.UTF-8
}

# Die Funktion install_scratch installiert scratch3 auf dem System
install_scratch() {
  echo 'Installiere Scratch...'
#  sudo apt install scratch3 -y
}

# Die Funktion load_examples bringt Beispiel-Skripte auf den Rechner
load_examples() {
  echo 'Lade Beispiele...'
  curl -o /home/pi/ChickenRun.sb3 https://raw.githubusercontent.com/undso/Scratch-Workshop/init/beispiele/ChickenRun.sb3
}

# Entrypoint
echo 'Beginne mit dem Setup'
update_system
config_system
install_scratch
load_examples
