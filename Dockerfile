# Usa la imagen oficial de Keycloak
FROM quay.io/keycloak/keycloak:22.0.0

# Configura el entorno para usar la base de datos en memoria (H2)
ENV KC_DB=h2

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Exponer el puerto por defecto
EXPOSE 8080

# Iniciar Keycloak sin base de datos externa
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]