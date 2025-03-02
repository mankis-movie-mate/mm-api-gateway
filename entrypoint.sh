# entrypoint.sh
#!/bin/sh

echo "Substituting environment variables in dynamic.yml.template..."
envsubst < /etc/traefik/dynamic.yml.template > /etc/traefik/dynamic.yml

echo "Starting Traefik..."
exec traefik