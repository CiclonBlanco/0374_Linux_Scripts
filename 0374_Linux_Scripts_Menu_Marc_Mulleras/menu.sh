#!/bin/bash

directori_script=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
source "$directori_script/Funcio_Benvinguda.sh"
source "$directori_script/Funcio_Calculadora_espai.sh"
source "$directori_script/Funcio_comprova_usuari.sh"

# Ejecuta la opción indicada y le pasa el argumento opcional a la función.
executar_opcio() {
    local opcio=$1
    shift

    case $opcio in
        1|-a|--add)
            Benvinguda "${1-}"
            ;;
        2)
            if [[ $# -gt 0 ]]; then
                echo "L'opció 2 no accepta arguments." >&2
                return 2
            fi
            calculadora_espai
            ;;
        3)
            comprova_usuari "${1-}"
            ;;
        4)
            if [[ $# -gt 0 ]]; then
                echo "L'opció 4 no accepta arguments." >&2
                return 2
            fi
            echo "Sortint..."
            ;;
        *)
            echo "Error: opció no vàlida." >&2
            return 2
            ;;
    esac
}

# Con parámetros ejecuta una opción y termina; sin ellos muestra el menú.
if [[ $# -gt 0 ]]; then
    if [[ $# -gt 2 ]]; then
        echo "Ús: $0 [1|2|3|4|-a|--add] [argumento]" >&2
        exit 2
    fi
    executar_opcio "$@"
    exit $?
fi

while true; do
    echo "--- Menú d'Utilitats ---"
    echo "1- Benvinguda"
    echo "2- Comprovar espai del disc dur"
    echo "3- Comprovar usuari"
    echo "4- Sortir"

    if ! read -r -p "Selecciona una opció del 1 al 4: " opcio; then
        exit 0
    fi

    executar_opcio "$opcio" || continue
    [[ $opcio == 4 ]] && break
done
