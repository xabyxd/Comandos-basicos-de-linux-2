#!/bin/bash

# Color
ROJO='\033[0;31m'
VERDE='\033[0;32m'
RESET='\033[0m'

# Define el directorio del usuario actual
directorio_user="/home/$(whoami)"


# Verifica si el usuario está en su directorio personal
if [[ $(pwd) != $directorio_user ]]; then
    echo -e "${ROJO}Advertencia:${RESET} No estás en el directorio personal. Debes cambiar a $directorio_user."
else
    echo -e "${VERDE}Estás en tu directorio personal.${RESET}"
fi

echo ""

# Verifica si el fichero 'fichero_rol' existe en el directorio
if [[ -e "$directorio_user/fichero_rol" ]]; then
    echo -e "${ROJO}El fichero 'fichero_rol' existe en $directorio_user. Debe ser borrado.${RESET}"
else
    echo -e "${VERDE}El fichero 'fichero_rol' no existe en $directorio_user. Todo good.${RESET}"
fi

echo ""

# Verifica si está el directorio 'games'

if [[ ! -d $directorio_user/games ]]; then
    echo -e "${ROJO}El directorio 'games' no existe en el directorio personal.${RESET}"
else

    # Verificar los directorios dentro de 'games'
    cd "$directorio_user/games"
    for dir in rol carrera disparos puzzles; do
        if [[ ! -d $dir ]]; then
            echo -e "${ROJO}El directorio '$dir' no existe en 'games'.${RESET}"
        else
            # Verificar los archivos en los directorios
            case $dir in
                rol)
                    if [[ ! -e "$dir/personajes" ]]; then
                        echo -e "${ROJO}El archivo 'personajes' no existe en '$dir'.${RESET}"
                    else
                        echo -e "${VERDE}Archivo 'personajes' encontrado en '$dir'.${RESET}"
                    fi
                    ;;
                carrera)
                    if [[ ! -e "$dir/coches" ]]; then
                        echo -e "${ROJO}El archivo 'coches' no existe en '$dir'."
                    else
                        echo -e "${VERDE}Archivo 'coches' encontrado en '$dir'."
                    fi
                    ;;
                disparos)
                    if [[ ! -e "$dir/armas" ]]; then
                        echo -e "${ROJO}El archivo 'armas' no existe en '$dir'."
                    else
                        echo -e "${VERDE}Archivo 'armas' encontrado en '$dir'."
                    fi
                    ;;
                puzzles)
                    if [[ ! -e "$dir/piezas" ]]; then
                        echo -e "${ROJO}El archivo 'piezas' no existe en '$dir'."
                    else
                        echo -e "${VERDE}Archivo 'piezas' encontrado en '$dir'."
                    fi
                    ;;
            esac
        fi
    done
    cd "$directorio_user" # Vuelve al directorio personal después de la revisión
fi

echo ""

# Verifica si el archivo 'passwd' existe en el directorio personal
if [[ -e "$directorio_user/passwd" ]]; then
    echo -e "${VERDE}El fichero 'passwd' existe en $directorio_user. Todo correcto."
else
    echo -e "${ROJO}El fichero 'passwd' no existe en $directorio_user."
fi

