FROM traefik:latest

RUN addgroup --system traefik && adduser --system --ingroup traefik traefik

COPY ./config/traefik.yml /etc/traefik/traefik.yml
COPY ./config/dynamic.yml /etc/traefik/dynamic.yml

VOLUME ["/letsencrypt"]

RUN chown -R traefik:traefik /etc/traefik /letsencrypt

USER traefik

EXPOSE 80 443

ENTRYPOINT ["/entrypoint.sh"]
CMD ["traefik"]
