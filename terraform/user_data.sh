#!/bin/bash
apt update -y
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install -y nodejs git nginx openjdk-17-jre

# Install Jenkins
wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list
apt update -y
apt install jenkins -y
systemctl enable jenkins
systemctl start jenkins

npm install -g pm2
