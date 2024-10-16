FROM caddy:builder AS builder
RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare
RUN xcaddy build \
    --with github.com/corazawaf/coraza-caddy


FROM caddy:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy