#!/bin/bash
DOMAIN="devlogin-nextastra"
TOKEN="YOUR_DUCKDNS_TOKEN"

echo url="https://www.duckdns.org/update?domains=$DOMAIN&token=$TOKEN&ip=" | curl -k -o duckdns.log -K -
