pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/saisuma18/Demo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('Demo1')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('Demo1').run('-d -p 8080:80')
                }
            }
        }
    }
}