#!/bin/bash
# Comprova l'usuari del primer paràmetre o el demana per teclat.
comprova_usuari () {
    local usuari=$1
    if [[ -z "$usuari" ]]; then
        read -r -p "Introdueix l'usuari: " usuari
    fi
    if getent passwd "$usuari" >/dev/null; then
        echo "L'usuari $usuari és al sistema."
    else
        echo "L'usuari $usuari, NO és al sistema."
    fi
}