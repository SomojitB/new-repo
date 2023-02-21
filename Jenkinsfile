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
                sh '/usr/local/bin/python3 hello.py'
            }
        }
    }
}
