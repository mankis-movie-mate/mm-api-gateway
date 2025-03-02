FROM traefik:latest

RUN apk add --no-cache gettext

COPY ./entrypoint.sh /entrypoint.sh
COPY ./config/traefik.yml /etc/traefik/traefik.yml
COPY ./config/dynamic.template.yml /etc/traefik/dynamic.template.yml

RUN chmod +x /entrypoint.sh

EXPOSE 8080
EXPOSE 80 443

ENTRYPOINT ["/entrypoint.sh"]
