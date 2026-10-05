#!/bin/bash
source ./Funcio_Benvinguda.sh
source ./Funcio_Calculadora_espai.sh
source ./Funcio_comprova_usuari.sh

echo "--- Menú d'Utilidades ---"
    echo "1- Bienvinguda"
    echo "2- Comprovar espai del disc dur"
    echo "3- Comprovar usuari"
    echo "4- Sortir"

    read -p "Selecciona una opció del 1 al 4" opcion
    case $opcion in
        1)
            source ./Funcio_Benvinguda.sh
            Benvinguda
            ;; 
        2)
            source ./Funcio_Calculadora_espai.sh
            calculadora_espai
        ;;
        3)
            source ./Funcio_comprova_usuari.sh
            comprova_usuari
        ;;
        4)
            echo "Sortint..."
            exit 0
        ;;
        *)
        echo "error, torna a intentar"
        ;;
    esac