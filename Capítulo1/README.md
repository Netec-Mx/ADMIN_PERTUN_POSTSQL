# Nombre del laboratorio 
Instalación de Postgresql en Ubuntu Linux desde respositorio
## Objetivo de la práctica:
Al finalizar la práctica, serás capaz de:
- Instalar Postgresql en un servidor Ubuntu Linux usando el repositorio oficial
- Usar la herramienta psql para inspeccionar los objetos del sistema
- Subir y baja la base de datos.

## Objetivo Visual 
Crear un diagrama o imagen que resuma las actividades a realizar, un ejemplo es la siguiente imagen. 

![diagrama1](../images/img1.png)

## Duración aproximada:
- 30 minutos.

## Tabla de ayuda:
Agregar una tabla con la información que pueda requerir el participante durante el laboratorio, como versión de software, IPs de servers, usuarios y credenciales de acceso.
| Contraseña | Correo | Código |
| --- | --- | ---|
| Netec2024 | edgardo@netec.com | 123abc |

## Instrucciones 
<!-- Proporciona pasos detallados sobre cómo configurar y administrar sistemas, implementar soluciones de software, realizar pruebas de seguridad, o cualquier otro escenario práctico relevante para el campo de la tecnología de la información -->

### Tarea 1. Instalación de Postgresql en Ubuntu Linux desde repositorio oficial
Paso 1. Actualizar el sistema Ubuntu
```shell
sudo apt update
```
Paso 2. Instalar paquetes requeridos para descargar los archivos 
```shell
sudo apt install wget ca-certificates
```

Paso 3. Agregar el repositorio APT oficial de Postgresql
```shell
wget -qO - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
```

Paso 4. Actualizar nuevamente el sistema para que tome el nuevo reposotirio
```shell
sudo apt update
```

Paso 5. Ejecutar el comando de instalación
```shell
sudo apt install postgresql postgresql-contrib
```

Paso 6: Revisar el estado del servidor
```shell
sudo service postgresql status
```

### Tarea 2. Descripción de la tarea a realizar.
Paso 1. Debe de relatar el instructor en verbo infinito, claro y conciso cada actividad para ir construyendo paso a paso en el objetivo de la tarea.

Paso 2. <!-- Añadir instrucción -->

Paso 3. <!-- Añadir instrucción -->

### Resultado esperado
En esta sección, se debe mostrar el resultado esperado de nuestro laboratorio
![imagen resultado](../images/img3.png)
