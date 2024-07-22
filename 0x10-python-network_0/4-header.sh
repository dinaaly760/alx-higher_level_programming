#!/bin/bash
# script that takes in a URL as an argument, sends a GET request to the URL, and displays the body of the response
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

response=$(curl -s -w "%{http_code}" -o /dev/null "$1" -H "X-School-User-Id: 98")
if [ "$response" -ne 200 ]; then
  echo "Error: $response"
else
  curl -s "$1" -H "X-School-User-Id: 98" | cat
fi
