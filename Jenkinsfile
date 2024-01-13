pipeline {
    agent any
    
    stages{
        stage('Checkout'){
            steps{
                git credentialsId: '2883f4b2-3185-4e37-ad2f-af854d934bb7', url: 'https://github.com/Jyoti-0405/DevOps-Spring.git'
                
                
            }
        }
        stage('Build'){
            steps{
                script{

                    sh "docker build -t docker-spring ."
                }
                
            }
        }
        
        stage('Deploy'){
            steps{
                script{
                    echo "Docker Image Tag Name:docker-spring"
                    sh "docker stop docker-spring || true && docker rm docker-spring || true"
                    sh "docker run --name docker-spring -d -p 8081:8081 docker-spring:latest"
                }
            }
        }
    }
}
