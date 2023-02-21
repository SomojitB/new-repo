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
        sh 'terraform init'
        sh 'terraform plan -out=tfplan'    
      }
    }
  }
}
