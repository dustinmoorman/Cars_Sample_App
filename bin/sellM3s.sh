#!/bin/bash
# Search
HOST="http://dmoormandevelopmentlab-qux2vh7z.appd-sales.com:8080/Cars_Sample_App-1.0-SNAPSHOT/sell.do?query=save"

for ((i=1;i<=20;i++));
do
		echo "Call number: ${i} for DOWNSTREAM: ${DOWNSTREAM_URL}"
        curl -X POST -H 'Content-Type: application/json' -d '{ "manufacturer": "4", "model": "M3", "name": "Alpine", "colour": "Schwarz", "year": "2003", "price": "45000", "summary": "Schwarzalpina", "description": "Schwarzalpina2" }' $HOST
        sleep 1
done
