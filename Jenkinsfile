pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[url: 'https://github.com/SomojitB/new-repo.git']]])
            }
        }
        stage('Hello') {
            steps {
               sh 'python3 hello1.py'
            }
            post {
                success {
                    sh 'echo "Tests passed! Deploying..."'
                }
                failure {
                    sh 'echo "Tests failed. Aborting deploy."'
                }
            }   
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying..."'
            }
        }   
    }
}

