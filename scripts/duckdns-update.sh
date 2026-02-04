#!/bin/bash
DOMAIN="devlogin-nextastra"
TOKEN="4ceb99c0-c3f2-4f3a-aaf4-e21cc74f698d"

echo url="https://www.duckdns.org/update?domains=$DOMAIN&token=$TOKEN&ip=" | curl -k -o duckdns.log -K -
