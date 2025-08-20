FROM traefik:latest

RUN apk add --no-cache gettext

COPY ./entrypoint.sh /entrypoint.sh
COPY ./config/traefik.template.yml /traefik.template.yml
COPY ./config/dynamic.template.yml /dynamic.template.yml

RUN mkdir -p /etc/traefik
RUN chmod +x /entrypoint.sh

EXPOSE 8080
EXPOSE 80 443

ENTRYPOINT ["/entrypoint.sh"]
