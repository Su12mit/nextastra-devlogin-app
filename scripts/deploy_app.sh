#!/bin/bash
pm2 delete nextastra-app || true
pm2 start app.js --name nextastra-app
pm2 save
