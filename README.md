# Practica-7

# Explicacion yaml:


dns_server: Servicio del servidor DNS con la imagen de bind9.

ports: Publica el puerto 53 (UDP y TCP) para las solicitudes DNS.

networks: Configura la red interna dns_network con IP fija 172.20.0.2.

volumes: Monta el volumen bind-config para almacenar la configuración.

dns_client: Cliente Alpine con herramientas de red (bind-tools) para realizar consultas.

networks: Define la red dns_network con una subred propia 172.20.0.0/24.

**Levantar los contenedores:**

docker-compose up -d

**Modificar la configuración:**

Edita los archivos en bind-config según sea necesario.

**Reinicia el contenedor con:**

docker-compose restart dns_server

Detener el servicio:

docker-compose down

**Verificación de la Configuración de la Zona**

Ejecutar el cliente Alpine y probar consultas:

docker exec -it alpine-client sh
nslookup www.jacobo.com 172.20.0.3
dig alias.jacobo.com TXT @172.20.0.3

Comprobar los registros:

Verificar que nslookup y dig devuelven los registros correctos configurados en db.jacobo.com.

Para comprobar las zonas introduciremos el comando: 

named-checkzone example.com /etc/bind/db.example.com

El example representa nuestro dominio.
