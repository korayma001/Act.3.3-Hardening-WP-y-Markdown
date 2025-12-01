#!/bin/bash

# SCRIPT DE SEGURIDAD 3 Acciones
echo "INICIO DE SCRIPT"
echo ""
echo "Actualizacion del sistema"
# Actualiza los índices de paquetes y luego los paquetes instalados
sudo apt update -y 
sudo apt upgrade -y
echo "------------------- Sistema actualizado ------------------."
echo ""

echo "Creando copia de seguridad......"
# Indicamos la ruta de nuestro alojamiento.
WP_DIR="/home/www/koraymaasir.atwebpages.com/wordpress"

# Ruta y nombre de de la copia de seguridad
BACKUP_FILE="/backupsWP/wp_backup_$(date +%Y%m%d).tar.gz"

# Archivo comprimido de todo nuetsro WP
tar -czf "$BACKUP_FILE" "$WP_DIR"

# Idicamos donde se ha guardado
echo "Backup creado en: $BACKUP_FILE"
echo ""

echo "Asignando permisos de seguridad...... "
# Asignar permisos 755 a directorios (para poder navegar)
find "$WP_DIR" -type d -exec chmod 755 {} \;

# Asignar permisos 644 a archivos (para poder leer y no escribir ni ejecutar)
find "$WP_DIR" -type f -exec chmod 644 {} \;

echo "Permiso 755 a directorios y 644 a archivos asignados"
echo "SCRIPT FINALIZADO"