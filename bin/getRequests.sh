#!/bin/bash

# First through Instrumentable Tomcat (w & w/o 301)
# About us
IT_CALLABLE_HOST="http://dmoormandevelopmentlab-q4weq41s.appd-sales.com:8080/instrumentable-tomcat/call?url="
DOWNSTREAM_URL="http://dmoormandevelopmentlab-qux2vh7z.appd-sales.com:8080/Cars_Sample_App-1.0-SNAPSHOT/home.do"

for i in {1..10}
do
        curl -viL -X GET "${IT_CALLABLE_HOST}${DOWNSTREAM_URL}"
        sleep 1
done

# Next direct
DIRECT_HOST="http://dmoormandevelopmentlab-qux2vh7z.appd-sales.com:8080/Cars_Sample_App-1.0-SNAPSHOT/home.do"

for i in {1..5}
do
        curl -viL -X GET $DIRECT_HOST
        sleep 1
done

# About us
IT_CALLABLE_HOST="http://dmoormandevelopmentlab-q4weq41s.appd-sales.com:8080/instrumentable-tomcat/call?url="
DOWNSTREAM_URL="http://dmoormandevelopmentlab-qux2vh7z.appd-sales.com:8080/Cars_Sample_App-1.0-SNAPSHOT/about.do"

for i in {1..10}
do
        curl -viL -X GET "${IT_CALLABLE_HOST}${DOWNSTREAM_URL}"
        sleep 1
done

# Insurance

IT_CALLABLE_HOST="http://dmoormandevelopmentlab-q4weq41s.appd-sales.com:8080/instrumentable-tomcat/call?url="
DOWNSTREAM_URL="http://dmoormandevelopmentlab-qux2vh7z.appd-sales.com:8080/Cars_Sample_App-1.0-SNAPSHOT/insurance.do"

for i in {1..10}
do
        curl -viL -X GET "${IT_CALLABLE_HOST}${DOWNSTREAM_URL}"
        sleep 1
done

# Sell
IT_CALLABLE_HOST="http://dmoormandevelopmentlab-q4weq41s.appd-sales.com:8080/instrumentable-tomcat/call?url="
DOWNSTREAM_URL="http://dmoormandevelopmentlab-qux2vh7z.appd-sales.com:8080/Cars_Sample_App-1.0-SNAPSHOT/sell.do"

for i in {1..10}
do
        curl -viL -X GET "${IT_CALLABLE_HOST}${DOWNSTREAM_URL}"
        sleep 1
done

# Search
IT_CALLABLE_HOST="http://dmoormandevelopmentlab-q4weq41s.appd-sales.com:8080/instrumentable-tomcat/call?url="
DOWNSTREAM_URL="http://dmoormandevelopmentlab-qux2vh7z.appd-sales.com:8080/Cars_Sample_App-1.0-SNAPSHOT/search.do"

for i in {1..10}
do
        curl -viL -X GET "${IT_CALLABLE_HOST}${DOWNSTREAM_URL}"
        sleep 1
done

