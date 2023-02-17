pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Running hello.py"'
                sh 'python3 hello.py'
            }
        }
        stage('Install Python 3') {
            steps {
                sh 'apt update && apt install -y python3'
            }
        }
        stage('Run Python Script') {
            steps {
                sh 'python3 /path/to/your/script.py'
            }
        }
    }
}
