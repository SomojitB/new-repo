pipeline {
    agent any
    tools {
        // Define the Python 3 tool with the path to the Python 3 executable
        python3 = tool name: 'Python 3', type: 'hudson.plugins.python.PythonInstallation', home: '/usr/local/bin/python3'
    }
    stages {
        stage('Build') {
            steps {
                // Use the Python 3 tool to run the Python script
                sh "${tool 'python3'}/bin/python3 hello.py"
            }
        }
    }
}
