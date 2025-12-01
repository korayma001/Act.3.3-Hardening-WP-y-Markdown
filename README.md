
# 1. URL del repositorio
[https://github.com/korayma001/Act.3.3-Hardening-WP-y-Markdown](https://github.com/korayma001/Act.3.3-Hardening-WP-y-Markdown) 

# 2. Medidas sobre WordPress  
## 2.1 Configurar un plugin de copia de seguridad.

**UpdraftPlus**  
![UpdraftPlus](/img/updraftPlus.jpg)    
Es un plugin de copia de seguridad y migración de WordPress. Permite hacer copias de seguridad, restaurar o migrar el sitio web a otro alojamiento o dominio. También permite programar o ejecutar copias de seguridad manualmente.  
 

## 2.2 Configurar un plugin de seguridad integral (Firewall, 2FA, Brute Force).	

**Solid Security**  
![Solid Security](/img/Solid%20Security.jpg)  
Refuerza la seguridad del sitio con Seguridad de Inicio de Sesión, Autenticación en dos pasos. Escanea vulnerabilidades y Firewall. Incluye protección contra fuerza bruta.
Antes se correspondia como *BackupBuddy*.

## 2.3 Implementar Autenticación en dos pasos.	

**WP 2FA**   
![WP 2FA](/img/WP%202FA.jpg)  
Un plugin para conseguir una mejor seguridad de inicio de sesión en WordPress, añadiendo autenticación en dos pasos para todos los usuarios.

## 2.4	Limitar los intentos de inicio de sesión (Protección contra Fuerza Bruta).	

**Limit Login Attempts Reloaded**  
![Limit Login Attempts Reloaded](/img/Limit%20Login%20Attempts%20Reloaded.jpg)    
Bloquea los intentos de acceso excesivos y protege el sitio contra ataques de fuerza bruta.

## 2.5 Ocultar la URL de inicio de sesión.	

**WPS Hide Login**   
![WPS Hide Login](/img/WPS%20Hide%20Login.jpg)   
Permite cambiar wp-login.php a lo que se desee , protegiendo el área de administración.

## 2.6	Implementar protección Anti-spam.	

**Akismet Anti-spam**  
![Akismet Anti-spam](/img/Akismet%20Anti-spam.jpg)    
Ofrece la mejor protección anti-spam para bloquear el spam en comentarios y el spam en formularios de contacto.

## 2.7	Configurar un plugin de hardening y escaneo de malware.	

**Sucuri Security**  
![Sucuri Security](/img/Sucuri%20Security.jpg)   
Es un conjunto de herramientas de seguridad que permite la supervisión de integridad, la detección de software malicioso y el refuerzo de seguridad.

## 2.8	Implementar un sistema de monitorización de actividad.

**WP Activity Log**  
![WP Activity Log](/img/WP%20Activity%20Log.jpg)  
Con este plugin su recomienda monitorizar la actividad de tu sitio. Resgistra la actividad y facilita la supervisión de la actividad.

# 3. Medidas sobre el servidor 

## 3.1 Desactivar la edición de archivos desde el anel.

La medida sirve para que <u> no cualquier persona pueda editar los ficheros php</u>", añadiendo la constante DISALLOW_FILE_EDIT en el fichero de configuración **wp-config.php**.

```php
define( 'DISALLOW_FILE_EDIT', true );
```

## 3.2 Cambiar el prefijo de las tablas SQL.

Se realiza en el fichero **wp-config.php**, modificando el prefijo de las tablas de la base de datos para dar más seguridad.
Evitando ataques de SQL Injection

```php
$table_prefix = 'kcr_';
```

# 4. Script de seguridad
```bash
#!/bin/bash
# SCRIPT DE SEGURIDAD 3 Acciones
echo "INICIO DE SCRIPT"
echo ""
echo "Actualizacion del sistema"
# Actualizamos los índices de los paquetes y luego los paquetes instalados
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

# Los echos encontrados de esta forma: echo "" es para simular un salto de linea como por ejemplo un intro.
```