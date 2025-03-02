FROM traefik:latest

RUN addgroup --system traefik && adduser --system --ingroup traefik traefik

COPY ./config/traefik.yml /etc/traefik/traefik.yml
COPY ./config/dynamic.yml /etc/traefik/dynamic.yml

RUN chown -R traefik:traefik /etc/traefik


USER traefik

EXPOSE 8080
EXPOSE 80 443

CMD ["traefik"]
