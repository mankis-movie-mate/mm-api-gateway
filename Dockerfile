FROM traefik:latest

USER traefik

COPY --chown=traefik:traefik ./config/traefik.yml /etc/traefik/traefik.yml

COPY --chown=traefik:traefik ./config/dynamic.yml /etc/traefik/dynamic.yml

VOLUME ["/letsencrypt"]

EXPOSE 80 443

ENTRYPOINT ["traefik"]


