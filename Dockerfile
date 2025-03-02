FROM traefik:latest

USER root
RUN apk add --no-cache gettext

RUN addgroup --system traefik && adduser --system --ingroup traefik traefik

COPY ./entrypoint.sh /entrypoint.sh
COPY ./config/traefik.yml /etc/traefik/traefik.yml
COPY ./config/dynamic.template.yml /etc/traefik/dynamic.template.yml

RUN chown -R traefik:traefik /etc/traefik

USER traefik

EXPOSE 8080
EXPOSE 80 443

CMD ["/entrypoint.sh"]
