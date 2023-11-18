#!/bin/sh

# Das Skript soll das Setup eines neuen Raspi übernehmen.

# Die Funktion update_system bringt das System mittels apt auf den aktuellen Stand
update_system() {
  sudo apt get update && sudo apt get upgrade -y
}

# Entrypoint
echo 'Beginne mit dem Setup'
update_system
