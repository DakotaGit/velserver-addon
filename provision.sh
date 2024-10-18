#!/usr/bin/with-contenv bashio

bashio::log.info "Starting velserver service on port 27015"

cd /opt/python-velbustcp
python3 -m velbustcp --settings settings.json
