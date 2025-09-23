pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/saisuma18/Demo.git' // replace with your repo
            }
        }

        stage('Install Dependencies') {
            steps {
                echo 'No dependencies for static HTML app'
            }
        }

        stage('Run Basic Tests') {
            steps {
                script {
                    def indexExists = fileExists('index.html')
                    if (!indexExists) {
                        error('index.html not found!')
                    }
                }
            }
        }

        stage('Build/Package') {
            steps {
                echo 'Static app — no build step needed'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy step here (FTP, copy to /var/www, etc.)'
                // Example (copy to /var/www/html):
                // sh 'cp -r * /var/www/html/'
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
