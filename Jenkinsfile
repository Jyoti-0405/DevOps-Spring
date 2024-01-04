pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    // Checkout the source code from version control
                    https://github.com/Jyoti-0405/DevOps-Spring
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    // Build the Spring Boot project using Maven
                    docker.build("docker-spring:latest")
                }
            }
        }

        

        stage('Deploy') {
            steps {
                script {
                    // Deploy or package the application as needed
                    // For example, copy the JAR file to a deployment directory
                    echo "Docker Image Tag Name:docker-spring"
                    sh "docker stop docker-spring || true && docker rm docker-spring || true"
                    sh "docker run --name docker-spring -d -p 8081:8081 docker-spring:latest"
                }
            }
        }
    }
}
