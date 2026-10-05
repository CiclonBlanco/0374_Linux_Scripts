#!/bin/bash
# Saluda al usuario recibido como primer parámetro o al usuario actual.
Benvinguda () {
    local usuari=${1:-$USER}
    echo "benvingut, $usuari anem a comprovar el sistema"
}