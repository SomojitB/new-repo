pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    stage('Terraform') {
      steps {
        sh 'sentinel -v'
      }
    }
  }
}
