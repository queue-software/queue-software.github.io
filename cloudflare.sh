set -x

echo "Flushing CloudFlare cache via API"

curl -sX POST "https://api.cloudflare.com/client/v4/zones/$CLOUDFLARE_ZONE_ID/purge_cache" \
    -H "X-Auth-Email: $CLOUDFLARE_API_USER" \
    -H "X-Auth-Key: $CLOUDFLARE_API_KEY" \
    -H "Content-Type: application/json" \
    --data '{"purge_everything":true}'

echo ""