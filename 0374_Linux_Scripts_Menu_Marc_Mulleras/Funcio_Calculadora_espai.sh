#!/bin/bash
# Mostra l'espai disponible a la partició principal; no rep paràmetres.
calculadora_espai () {
    echo "espai llliure de la partició principal:"
    df -h /
}