#!/bin/sh

set -e

echo "Substituting environment variables in dynamic.yml.template..."
envsubst < /dynamic.template.yml > /etc/traefik/dynamic.yml

echo "Starting Traefik..."
exec traefik "$@"