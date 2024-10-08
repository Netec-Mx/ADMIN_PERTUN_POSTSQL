# Práctica 6. Gestión de usuarios y autenticación, acceso remoto y permisos

## Objetivo de la práctica:

Al finalizar la práctica, serás capaz de:

- Aprender a crear usuarios, asignar contraseñas y gestionar la autenticación en PostgreSQL. <br>
- Configurar PostgreSQL para permitir conexiones remotas y conectarse desde otra máquina.<br>
- Aprender a gestionar permisos de usuarios en PostgreSQL a nivel de base de datos, esquema y tabla.<br>

## Objetivo visual:

![diagrama1](../images/lab6/img1.png)

## Duración aproximada:

- 30 minutos.

## Instrucciones 

### Tarea 1. Crear usuario y asignar privilegios.

Paso 1. Iniciar sesión en PostgreSQL como superusuario.

```shell
sudo -u postgres psql
```

Paso 2. Crear un nuevo usuario llamado 'usuario_prueba'.

```shell
CREATE USER user_prueba WITH PASSWORD 'clave_segura';
```

Paso 3. Verificar que el usuario se haya creado correctamente.
```shell
\du
```
Paso 4. Crear una nueva base de datos llamada 'prueba_db'.
```shell
CREATE DATABASE prueba_db;
```
Paso 5. Otorgar todos los privilegios sobre la base de datos 'prueba_db' al usuario 'user_prueba':
```shell
GRANT ALL PRIVILEGES ON DATABASE prueba_db TO user_prueba;
```
Paso 6. Verificar que el usuario tenga todos los privilegios sobre la base de datos prueba_db.
```shell
\l
```
Paso 7. Cambiar la clave del usuario user_prueba por 'otra_clave'
```shell
ALTER USER user_prueba WITH PASSWORD 'clave_segura';
```


### Tarea 2. Configurar acceso remoto a la base de datos 'prueba_db' del usuario 'user_prueba' desde el host 'host_remoto'

Paso 1. Editar el archivo postgresql.conf y cambiar la línea listen_address = 'localhost' por listen_address = '*':

```shell
sudo vi /etc/postgresql/[version]/main/postgresql.conf
```

Paso 2. Editar el archivo pg_hba.conf.

```shell
sudo vi /etc/postgresql/[version]/main/pg_hba.conf
```

Agregar la siguiente línea: 

```shell
host    prueba_db    user_prueba    host_remoto/32    md5
```

Paso 3. Reiniciar el servicio.

```shell
sudo service postgresql restart
```

Paso 4. Instalar la utilidad psql en la máquina remota con ip 'host_remoto'

```shell
sudo apt-get install postgresql-client
```

Paso 5. Intentar conectarse remotamente.

```shell
[host_remoto]# psql -h <ip del servidor> -U user_prueba -d prueba_db
```

### Tarea 3. Crear usuarios con permisos específicos sobre recursos.

Paso 1. Abrir una sesion de psql como administrador sobre la base de datos curso.

```shell
sudo psql curso
```

Paso 2. Crear dos nuevos usuarios.

```shell
CREATE USER user_lectura WITH PASSWORD 'pass_lectura';
CREATE USER user_escritura WITH PASSWORD 'pass_escritura';
```

Paso 3. Crear una nueva base de datos y conéctese a ella:

```shell
CREATE DATABASE permisos_db;
\c permisos_db
```

Paso 4. Crear un nuevo esquema y una tabla.

```shell
CREATE SCHEMA esquema_prueba;
CREATE TABLE esquema_prueba.tabla_prueba (id SERIAL PRIMARY KEY, nombre VARCHAR(50));
```

Paso 5. Otorgar permisos de lectura al user_lectura.

```shell
GRANT USAGE ON SCHEMA esquema_prueba TO user_lectura;
GRANT SELECT ON ALL TABLES IN SCHEMA esquema_prueba TO user_lectura;
```

Paso 6. Otorgar permisos de escritura al user_escritura:

```shell
GRANT USAGE, CREATE ON SCHEMA esquema_prueba TO user_escritura;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA esquema_prueba TO user_escritura;
```

Paso 7. Revisar los permisos asignados.

```shell
\dn+
```

### Resultado esperado:

Tarea 1

![imagen resultado](../images/lab6/img3.png)

Tarea 2

- Debe poder editar los archivos de configuración de PostgreSQL. <br>
- Debe poder reiniciar el servicio de PostgreSQL sin errores.<br>
- Debe poder conectarse a la base de datos desde una máquina remota usando la dirección IP del servidor.<br>

Tarea 3

![imagen resultado](../images/lab6/img2.png)

## [Índice principal](../README.md)

## [Práctica 5. Replicación asíncrona y síncrona](../Capítulo5/README.md)

## [Práctica 7. Configuración y monitoreo de la base de datos](../Capítulo7/README.md)
