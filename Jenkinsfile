pipeline {
  agent any
  stages {
    stage('Install') {
      steps {
        sh 'npm install'
      }
    }

    stage('Build') {
      environment {
        CHROME_BIN = 'C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe'
      }
      steps {
        sh 'npm run build:ssr'
      }
    }

    stage('Deploy') {
      steps {
        sh 'pm2 restart all'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}