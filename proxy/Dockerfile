ARG VERSION=2.7.4

# builder
FROM caddy:${VERSION}-builder-alpine AS builder
RUN xcaddy build --with github.com/WeidiDeng/caddy-cloudflare-ip

# runner
FROM caddy:${VERSION}-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /Caddyfile
RUN caddy fmt --overwrite /Caddyfile

CMD caddy run --config /Caddyfile 2>&1
