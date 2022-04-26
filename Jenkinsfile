pipeline {
  agent any
  stages {
    stage('Install') {
      steps {
        sh 'npm install'
        sh 'npm install -g @angular/cli'
      }
    }

    stage('Build') {
      environment {
        CHROME_BIN = 'C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe'
      }
      steps {
        sh 'ng build'
      }
    }

    stage('Test') {
      steps {
        bat 'npm test'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}
