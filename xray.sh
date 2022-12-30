#!/bin/sh
if [ ! -f UUID ]; then
  UUID="3a37fd9e-5f8f-4108-892c-3194aa0a1286"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

