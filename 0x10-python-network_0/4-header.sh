#!/bin/bash

# Check if a URL was provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

# Store the URL in a variable
url="$1"

# Send the GET request with the specified header using curl
response=$(curl -H "X-School-User-Id: 98" "$url")

# Display the response body
echo "$response"
