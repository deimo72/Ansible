#!/bin/sh
 
 OUTPUT_FILE=/tmp/geoip_locate.txt
  
# Capturar la ip publica del servidor
PUBLIC_IP=`curl -s https://ipinfo.io/ip`
   
# LLama a la API y captura la respuesta.
curl -s https://ipvigilante.com/${PUBLIC_IP} | \
        jq '.data.latitude, .data.longitude, .data.city_name, .data.country_name' | \
        while read -r LATITUDE; do
                read -r LONGITUDE
                read -r CITY
                read -r COUNTRY
                echo "${LATITUDE},${LONGITUDE},${CITY},${COUNTRY}" | \
                        tr --delete \" > \
                        ${OUTPUT_FILE}
        done
