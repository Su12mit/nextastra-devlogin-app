#!/bin/bash

set -e  # Stop script if any command fails

echo "Updating packages..."
apt update -y

echo "Installing base dependencies..."
apt install -y curl gnupg2 ca-certificates lsb-release ubuntu-keyring

echo "Installing Node.js 18..."
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install -y nodejs

echo "Installing Git, Nginx, and Java..."
apt install -y git nginx openjdk-17-jdk

# ---------------- JENKINS INSTALL ----------------

echo "Adding Jenkins repository key..."
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key \
  | tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo "Adding Jenkins repository..."
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" \
  > /etc/apt/sources.list.d/jenkins.list

echo "Updating package list with Jenkins repo..."
apt update -y

echo "Installing Jenkins..."
apt install -y jenkins

echo "Starting and enabling Jenkins..."
systemctl enable jenkins
systemctl start jenkins

# ---------------- PM2 ----------------

echo "Installing PM2 globally..."
npm install -g pm2

echo "Setup complete!"
