pipeline {
  agent {
    docker {
      image 'python:3'
      label 'my-custom-label'
    }
  }
  stages {
    stage('Build') {
      steps {
        sh 'python3 hello.py'
      }
    }
  }
}
