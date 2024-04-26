#!/bin/bash
# Corrector automatico de Comandos basicos 2
 
# Borrado y escritura limpia del archivo de salida
rm -r correccion.txt
 
# Indicador/Seperador
echo "Ficheros." >> correccion.txt
 
# Deteccion de ficheros de texto lol-account.txt y vieja-guild.txt.
if [ -f games/moba/lol-account.txt ]; then
    echo "punto 1: El archivo existe. correcto!" >> correccion.txt
else
    echo "punto 1: El archivo no existe. incorrecto.." >> correccion.txt
fi
 
# Comprobamos si se ha renombrado el archivo de guild.txt a vieja-guild.txt.
if [ -f games/.private/vieja-guild.txt ]; then
    echo "punto 1.1: El archivo existe. correcto!" >> correccion.txt
else
    echo "punto 1.1: El archivo no existe. incorrecto.." >> correccion.txt
fi
 
 
# Indicador/Seperador
echo "Directorios." >> correccion.txt
 
 
# Deteccion de los directorios carreras, rol, moba, disparos, simulacion.
# Directorio .private deberia existir
if [ -d games/.private ]; then
    echo "punto 2: El directorio existe. correcto!" >> correccion.txt
else
    echo "punto 2: El directorio no existe. incorrecto.." >> correccion.txt
fi
 
# Directorio rol deberia no existir
if [ -d games/rol ]; then
    echo "punto 2: El directorio existe. incorrecto.." >> correccion.txt
else
    echo "punto 2: El directorio no existe. correcto!" >> correccion.txt
fi
 
# Directorio moba deberia existir
if [ -d games/moba ]; then
    echo "punto 2: El directorio existe. correcto!" >> correccion.txt
else
    echo "punto 2: El directorio no existe. incorrecto.." >> correccion.txt
fi
 
# Directorio disparos deberia existir
if [ -d games/disparos ]; then
    echo "punto 2: El directorio existe. correcto!" >> correccion.txt
else
    echo "punto 2: El directorio no existe. incorrecto.." >> correccion.txt
fi
 
# Directorio simulacion deberia existir
if [ -d games/simulacion ]; then
    echo "punto 2: El directorio existe. correcto!" >> correccion.txt
else
    echo "punto 2: El directorio no existe. incorrecto.." >> correccion.txt
fi
 
# Directorio carreras deberia existir
if [ -d games/carreras ]; then
    echo "punto 2: El directorio existe. correcto!" >> correccion.txt
else
    echo "punto 2: El directorio no existe. incorrecto.." >> correccion.txt
fi
 
 
 
 