#!/bin/bash

# Linux VM Automation Script
# This script installs Jenkins, Docker, Minikube, and Kubernetes tools for DevOps tasks.

set -e  # Exit on error

# Update package list and upgrade system
echo "Updating system..."
sudo apt update && sudo apt upgrade -y

# Install essential packages
echo "Installing necessary packages..."
sudo apt install -y git curl vim htop

# Install Docker
echo "Installing Docker..."
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# Install Jenkins
echo "Installing Jenkins..."
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
echo "deb http://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt update
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Install Minikube
echo "Installing Minikube..."
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Install kubectl
echo "Installing kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install kubectl /usr/local/bin/kubectl

# Start Minikube
echo "Starting Minikube..."
minikube start

# Print completion message
echo "VM setup completed successfully!"
