pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'flask-app'
    }

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/HakeemKhan1/linux-vm-automation.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Run Minikube') {
            steps {
                sh 'minikube start'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s-deployment.yaml'
                sh 'kubectl apply -f k8s-service.yaml'
            }
        }
    }
}
