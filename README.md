# keycloak
1. Crear el secret que hay en el directorio: kubectl apply -f secret.yaml
2. Crear el volumen en caso de que no exista: kubectl apply -f pv.yaml
3. helm upgrade --install keycloak helm-cofares/helm-cofares -n keycloak -f .\values.yaml