curl --location --request POST 'http://localhost:8080/rest/process-definition/key/payment-process/start' --header 'Content-Type: application/json' --data-raw '{
     "businessKey": "business-key-123"
}'

sleep 5

curl --location --request POST 'http://localhost:8080/rest/message' --header 'Content-Type: application/json' --data-raw '{
     "messageName": "payment-successful-message",
     "businessKey": "business-key-123"
}'
