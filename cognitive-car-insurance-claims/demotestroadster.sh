#!/bin/sh

curl --insecure \
     --user "$cp4iuser:$cp4ipw" \
     --request POST \
     --url "$cp4ibasepath/CarRepairClaim" \
     --header "X-IBM-Client-Id:$cp4iclientid" \
     --header 'accept: application/json' \
     --header 'content-type: application/json' \
     --data '{
         "Name":"Andy Ycoung",
         "eMail":"a_young@dickenson.com",
         "LicensePlate":"Roadster1",
         "DescriptionOfDamage":"Turbo is down on power and I like to drive fast - please tune it up!",
         "PhotoOfCar":"'$(base64 roadster.jpg)'",
         "ContactID":"8897796795006976"
         }'