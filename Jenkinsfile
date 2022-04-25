pipeline {
  agent any
  stages {
    stage('Install') {
      steps {
        sh 'npm install'
      }
    }

    stage('Install karma-chrome-launcher') {
      steps {
        sh 'npm i -D karma-chrome-launcher'
      }
    }

    stage('Test') {
      steps {
        sh 'npm test'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}