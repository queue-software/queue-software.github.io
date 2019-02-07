echo "$CLOUDFLARE_API_USER - $CLOUDFLARE_API_TOKEN"

curl -sX POST "https://api.cloudflare.com/client/v4/zones/e676aa7dfb44071384986c3b8e84a14d/purge_cache" \
    -H "X-Auth-Email: $CLOUDFLARE_API_USER" \
    -H "X-Auth-Key: $CLOUDFLARE_API_KEY" \
    -H "Content-Type: application/json" \
    --data '{"purge_everything":true}'

echo ""