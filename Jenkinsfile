pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-java-app:1.0 .'
                sh 'docker images'
            }
        }
        stage('Run Docker Container') { // Added closing bracket for the 'Build Docker Image' stage
            steps {
                script { // 'script' block is optional here, but kept for consistency with original
                    sh 'docker rm -f my-java-container || true' // Corrected the faulty OR operator
                    sh 'docker run -d --name my-java-container my-java-app:1.0' // Corrected the faulty ' - name'
                    sh 'docker logs my-java-container'
                }
            }
        }
    } // Added closing bracket for 'stages' block
    post {
        always {
            echo 'Pipeline finished.'
        }
    }
} // Added closing bracket for 'pipeline' block