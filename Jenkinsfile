pipeline {
  agent any
  stages {
    stage('Install') {
      steps {
        sh 'npm install'
        sh 'npm install -g @angular/cli'
        sh 'sudo apt install python3'
      }
    }

    stage('Test') {
      steps {
        sh 'npm run test'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}