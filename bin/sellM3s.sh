#!/bin/bash
# Search
HOST="http://dmoormandevelopmentlab-qux2vh7z.appd-sales.com:8080/Cars_Sample_App-1.0-SNAPSHOT/sell.do?query=save"

for ((i=1;i<=20;i++));
do
		echo "Call number: ${i} for DOWNSTREAM: ${DOWNSTREAM_URL}"
        curl -X POST -H 'Content-Type: application/json' -F "manufacturer=4" -F "model=M3" -F "name=Alpine" -F "colour=Schwarz" -F "year=2003" -F "price=45000" -F "summary=Schwarzalpina" -F "description=Schwarzalpina2" -F "x=23" -F "y=22" $HOST
        sleep 1
done
