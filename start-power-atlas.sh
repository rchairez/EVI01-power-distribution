#!/bin/bash
# Kill any existing instances on these ports
lsof -ti:8099 | xargs kill -9 2>/dev/null
lsof -ti:8098 | xargs kill -9 2>/dev/null
lsof -ti:8081 | xargs kill -9 2>/dev/null

python3 "/Users/rchairez/Documents/Apps/EVI01 Power Project/netbox-proxy.py" &
python3 "/Users/rchairez/Documents/Apps/EVI01 Power Project/jira-proxy.py" &

echo "NetBox proxy running on port 8099"
echo "Jira proxy running on port 8098"
echo "Starting HTTP server on http://localhost:8081/EVI01-dh1.html"

cd "/Users/rchairez/Documents/Apps/EVI01 Power Project" && python3 -m http.server 8081
