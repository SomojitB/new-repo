pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Running hello.py"'
                sh '/usr/bin/python3 hello.py'
            }
        }
    }
}
