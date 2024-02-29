#!/bin/bash

# Función para listar el contenido de un fichero (carpeta)
listar_contenido() {
    read -p "Ingrese la ruta absoluta al fichero o carpeta: " ruta
    ls -l "$ruta"
}

# Función para crear un archivo de texto con una línea de texto
crear_archivo() {
    read -p "Ingrese la cadena de texto para almacenar en el archivo: " texto
    echo "$texto" > archivo.txt
    echo "Archivo creado con éxito."
}

# Función para comparar dos archivos de texto
comparar_archivos() {
    read -p "Ingrese la ruta absoluta al primer archivo: " archivo1
    read -p "Ingrese la ruta absoluta al segundo archivo: " archivo2
    diff "$archivo1" "$archivo2"
}

# Función para mostrar el uso de awk
uso_awk() {
    echo "Ejemplo de uso de awk: "
    echo "Imprimir la segunda columna de un archivo CSV:"
    awk -F ',' '{print $2}' archivo.csv
}

# Función para mostrar el uso de grep
uso_grep() {
    echo "Ejemplo de uso de grep: "
    echo "Buscar una palabra en un archivo de texto:"
    grep "palabra" archivo.txt
}

# Menú principal
while true; do
    echo "Menú de opciones:"
    echo "1. Listar contenido de un fichero (carpeta)"
    echo "2. Crear un archivo de texto con una línea de texto"
    echo "3. Comparar dos archivos de texto"
    echo "4. Mostrar el uso de awk"
    echo "5. Mostrar el uso de grep"
    echo "6. Salir"

    read -p "Seleccione una opción: " opcion

    case $opcion in
        1) listar_contenido ;;
        2) crear_archivo ;;
        3) comparar_archivos ;;
        4) uso_awk ;;
        5) uso_grep ;;
        6) echo "Saliendo del script."
           break ;;
        *) echo "Opción no válida. Inténtelo de nuevo." ;;
    esac
done
