
# Medidas sobre WordPress

## 1. Configurar un plugin de copia de seguridad.

**UpdraftPlus**  
![UpdraftPlus](/img/updraftPlus.jpg)

Es un plugin de copia de seguridad y migración de WordPress. Permite hacer copias de seguridad, restaurar o migrar el sitio web a otro alojamiento o dominio. También permite programar o ejecutar copias de seguridad manualmente.

## 2.	Configurar un plugin de seguridad integral (Firewall, 2FA, Brute Force).	

**Solid Security**  
Refuerza la seguridad del sitio con Seguridad de Inicio de Sesión, Autenticación en dos pasos. Escanea vulnerabilidades y Firewall. Incluye protección contra fuerza bruta.

## 3.	Implementar Autenticación en dos pasos.	

**WP 2FA**   
Un plugin para conseguir una mejor seguridad de inicio de sesión en WordPress, añadiendo autenticación en dos pasos para todos los usuarios.

## 4.	Limitar los intentos de inicio de sesión (Protección contra Fuerza Bruta).	

**Limit Login Attempts Reloaded**   
Bloquea los intentos de acceso excesivos y protege el sitio contra ataques de fuerza bruta.

## 5.	Ocultar la URL de inicio de sesión.	

**WPS Hide Login**   
Permite cambiar wp-login.php a lo que se desee , protegiendo el área de administración.

## 6.	Implementar protección Anti-spam.	

**Akismet Anti-spam**   
Ofrece la mejor protección anti-spam para bloquear el spam en comentarios y el spam en formularios de contacto.

## 7.	Configurar un plugin de hardening y escaneo de malware.	

**Sucuri Security**  
Es un conjunto de herramientas de seguridad que permite la supervisión de integridad, la detección de software malicioso y el refuerzo de seguridad.

## 8.	Implementar un sistema de monitorización de actividad.

**WP Activity Log**  
Con este plugin su recomienda monitorizar la actividad de tu sitio. Resgistra la actividad y facilita la supervisión de la actividad.

# Medidas sobre el servidor 

## 9. Desactivar la edición de archivos desde el anel.

La medida sirve para que " cualquier persona no edite los ficheros php", añadiendo la constante DISALLOW_FILE_EDIT en el fichero de configuración **wp-config.php**.

```php
define( 'DISALLOW_FILE_EDIT', true );
```

## 10. Cambiar el prefijo de las tablas SQL.

Se realiza en el fichero **wp-config.php**, modificando el prefijo de las tablas de la base de datos para dar más seguridad.
Evitando ataques de SQL Injection

```php
$table_prefix = 'kcr_';
```