# Linux VM Automation Project

### Overview

This project automates the setup of a Linux VM for DevOps tasks using Jenkins, Docker, and Kubernetes. It includes a Jenkins pipeline that builds and deploys a simple Python web app in a Kubernetes cluster.

### Features

- **Automated Setup**: Installs Jenkins, Docker, Minikube, and Kubernetes tools.
- **Jenkins Pipeline**: Automates Docker build and Kubernetes deployment.
- **Containerized Web App**: Deploys a simple Flask app inside a Docker container.
- **Kubernetes Service**: Exposes the app via Minikube.

### Prerequisites

- A Linux VM (Ubuntu 20.04+ recommended)
- SSH access to the VM
- Git installed on your machine

### Installation Steps

1️⃣ **Clone the Repository**

   ```bash
   git clone https://your-repository-url.git
   cd your-project-directory
