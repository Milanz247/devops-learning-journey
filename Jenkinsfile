pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                echo 'Code checkout happens automatically!'
            }
        }
        stage('Build') {
            steps {
                echo 'Building the application...'
                sh 'echo "Running build commands..."'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing the application...'
                sh 'ls -la'
            }
        }
    }
    post {
        always {
            echo 'Pipeline has finished.'
        }
    }
}
