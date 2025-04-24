#!/bin/sh

# Replace @DB_CONN_STRING with actual env var in-place
sed "s|@DB_CONN_STRING|$DB_CONN_STRING|g" dab-config-is360.json > resolved-config.json

# Start DAB using the modified config
dab start --config resolved-config.json
