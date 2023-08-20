FROM caddy:2.7.4-alpine

COPY Caddyfile /Caddyfile

RUN caddy fmt --overwrite /Caddyfile

CMD caddy run --config /Caddyfile 2>&1
