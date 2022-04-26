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
      steps {
        sh 'ng build'
      }
    }

    stage('Test') {
       environment {
        CHROME_BIN = 'C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe'
      }
      steps {
        sh 'npm install --save-dev karma-phantomjs-launcher'
        sh 'npm install --save intl'
        sh 'ng test'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}
