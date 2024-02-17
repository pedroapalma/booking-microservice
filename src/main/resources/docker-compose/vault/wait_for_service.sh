#!/bin/bash

while ! curl -s http://127.0.0.1:8201 > /dev/null; do
    echo "Waiting for the service to be ready..."
    sleep 1
done

vault kv put secret/booking-microservice @secrets/booking-microservice.json
