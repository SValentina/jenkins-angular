pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Install') {
      steps {
        sh 'npm install'
        sh 'ng --version'
      }
    }

    stage('Build') {
      steps {
        sh 'ng build'
      }
    }

    stage('Test') {
      steps {
        sh 'ng --version'
        sh 'ng test --browsers ChromeHeadless'
      }
    }

  }
}