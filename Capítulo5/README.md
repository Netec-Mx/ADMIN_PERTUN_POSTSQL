# Replicación asíncrona y síncrona.

## Objetivo de la práctica:
Al finalizar la práctica, serás capaz de:
- Realizar una replicación asíncrona de una instancia de postgresql.
- Realizar una replicación síncrona de una instancia de postgresql.

## Objetivo Visual 
Crear un diagrama o imagen que resuma las actividades a realizar, un ejemplo es la siguiente imagen. 

![diagrama1](../images/lab5/img1.png)

## Duración aproximada:
- 30 minutos.

## Tabla de ayuda:

## Instrucciones 
### Tarea 1. Configurar la replicación entre el servidor del curso (primario) con uno nuevo llamado secundario.
Paso 1. Instalar una nuevo servidor virtual en Virtualbox usando la imagen de Ubuntu 24.02
Nombre de host: secundario
IP : <IP_SECUNDARIO>


Paso 2. En el servidor primario, editar postgresql.conf:
```shell
listen_addresses = '*'
wal_level = replica
max_wal_senders = 3
```

Paso 3. En el servidor primario, edite pg_hba.conf para permitir la conexión del secundario.
```shell
host replication all <IP_SECUNDARIO>/32 md5
```

Paso 4. Crear un usuario llamado replicator y luego reiniciar el servidor primario
```shell
psql curso
CREATE USER replicator WITH replication PASSWORD 'secret';
```
```shell
sudo service postgresql restart
```

Paso 5. En el secundario realice un backup físico del primario.
```shell
sudo rm -rf /var/lib/postgresql/[version]/main/*
pg_basebackup -h <IP_PRIMARIO> -D /var/lib/postgresql/[version]/main -P -U replicator -R
```

Paso 6. Edite la configuración de postresql en el servidor secuandario.
```shell
hot_standby = on
```

Paso 6. 2.6. Crea o edita el archivo postgresql.auto.conf y reinicie el servidor secundario.
```shell
primary_conninfo = 'host=<IP_PRIMARIO> port=5432 user=replicator password=<PASSWORD>'
```
```shell
sudo service postgresql restart
```

Paso 7. Probar la replicación. En el servidor primario, cree una tabla y inserte datos:
```shell
CREATE TABLE test_replication (id SERIAL PRIMARY KEY, data TEXT);
INSERT INTO test_replication (data) VALUES ('Test replicación asíncrona');
```

Paso 8. 3.2. En el servidor secundario, verifique que los datos se hayan replicado.
```shell
SELECT * FROM test_replication;
```
### Resultado esperado
![imagen resultado](../images/lab5/img2.png)


### Configurar la replicación síncrona para los servidores de la tarea1.
Paso 1. Editar la configuración del servidor primario y agregar lo siguiente:
```shell
synchronous_commit = on
synchronous_standby_names = 'FIRST 1 (standby_server)'
```
Paso 2. Reiniciar el servicio
```shell
sudo service postgresql restart
```

Paso 3. Editar la configuración del servidor secundario:

```shell
synchronous_commit = on
```

Paso 4. Editar el archivo postgresql.auto.conf en el servidor secundario y reiniciar el servicio.
```shell
primary_conninfo = 'host=<IP_PRIMARIO> port=5432 user=replicator password=<PASSWORD> application_name=standby_server'
```
```shell
sudo service postgresql restart
```

Paso 5. Probar la replicación. En el servidor primario crear la siguiente tabla y registro.
```shell
CREATE TABLE test_sync_replication (id SERIAL PRIMARY KEY, data TEXT);
INSERT INTO test_sync_replication (data) VALUES ('Test synchronous replication');
```

Paso 6. Verificar que la actualización se haya hecho de manera síncrona.
```shell
SELECT sync_state FROM pg_stat_replication WHERE application_name = 'standby_server';
```

### Resultado esperado
```shell
curso=# SELECT sync_state FROM pg_stat_replication;
 sync_state
------------
    sync
(1 fila )
```
