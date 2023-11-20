#!/bin/sh

# Das Skript soll das Setup eines neuen Raspi übernehmen.

# Die Funktion update_system bringt das System mittels apt auf den aktuellen Stand
update_system() {
  echo 'System auf den aktuellen Stand bringen...'
  sudo apt update && sudo apt upgrade -y
  sudo apt dist-upgrade -y
  sudo apt autoremove -y && sudo apt autoclean -y
}

# Entrypoint
echo 'Beginne mit dem Setup'
update_system
