environment {
    PATH = "/usr/local/bin:${PATH}"
}

pipeline {
    agent any
    tools {
        // Define the Python 3 tool with the path to the Python 3 executable
        python3 = tool name: 'Python 3', type: 'hudson.plugins.python.PythonInstallation', home: '/usr/bin/python3'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branch: 'main', userRemoteConfigs: [[url: 'https://github.com/SomojitB/new-repo.git']]])
            }
        }
        stage('Hello') {
            steps {
                sh "${tool 'python3'}/bin/python3 hello.py"
            }
        }
    }
}

