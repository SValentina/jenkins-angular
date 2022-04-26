pipeline {
  agent any
  stages {
    stage('Install') {
      steps {
        sh 'npm install'
        sh 'npm install -g @angular/cli@latest'
      }
    }

    stage('Test') {
      environment {
        CHROME_BIN = 'C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe'
      }
      steps {
        sh 'ng test --browsers ChromeHeadless'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}