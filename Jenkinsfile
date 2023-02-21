pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                git branch: 'main', url: 'https://github.com/SomojitB/new-repo.git'
                sh 'echo "Running hello.py"'
                sh 'python3 hello.py'
            }
        }
    }
}
