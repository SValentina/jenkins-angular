pipeline {
  agent any
  stages {
    stage('Install') {
      steps {
        sh 'npm install'
        sh 'npm install -g @angular/cli'
      }
    }

    stage('Test') {
      steps {
        sh 'sh npm run test'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}
