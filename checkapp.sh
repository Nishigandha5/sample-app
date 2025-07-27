#!/bin/bash

# Define your service external IP and port
IP="35.196.187.63"
PORT="8080"

# Check the response
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" http://$IP:$PORT)

if [ "$RESPONSE" == "200" ]; then
  echo "✅ Production app is successfully running at http://$IP:$PORT"
else
  echo "❌ Failed to reach the app. HTTP Status: $RESPONSE"
fi
