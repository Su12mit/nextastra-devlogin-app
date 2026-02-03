#!/bin/bash
sudo apt update
sudo apt install certbot python3-certbot-nginx -y
sudo certbot --nginx -d devlogin-nextastra.duckdns.org --non-interactive --agree-tos -m your-email@example.com
