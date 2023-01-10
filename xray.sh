#!/bin/sh
if [ ! -f UUID ]; then
  UUID="3be0d20e-8bd7-4662-b7f0-fe2334d4347f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

