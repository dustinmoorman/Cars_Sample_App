#!/bin/bash
# Search
IT_CALLABLE_HOST="http://dmoormandevelopmentlab-q4weq41s.appd-sales.com:8080/instrumentable-tomcat/call?url="
DOWNSTREAM_URL="http://dmoormandevelopmentlab-qux2vh7z.appd-sales.com:8080/Cars_Sample_App-1.0-SNAPSHOT/cars.do?query=manu&mid=1"

for ((i=1;i<=20;i++));
do
		echo "Call number: ${i} for DOWNSTREAM: ${DOWNSTREAM_URL}"
        curl -viL -X GET "${IT_CALLABLE_HOST}${DOWNSTREAM_URL}"
        sleep 1
done


# Search
IT_CALLABLE_HOST="http://dmoormandevelopmentlab-q4weq41s.appd-sales.com:8080/instrumentable-tomcat/call?url="
DOWNSTREAM_URL="http%3A%2F%2Fdmoormandevelopmentlab-qux2vh7z.appd-sales.com%3A8080%2FCars_Sample_App-1.0-SNAPSHOT%2Fcar.do%3Fquery%3Dcar%26cid%3D1"

for ((i=1;i<=20;i++));
do
		echo "Call number: ${i} for DOWNSTREAM: ${DOWNSTREAM_URL}"
        curl -viL -X GET "${IT_CALLABLE_HOST}${DOWNSTREAM_URL}"
        sleep 1
done

