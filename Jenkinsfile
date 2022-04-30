pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Build') {
      steps {
        sh 'ng build'
      }
    }

    stage('Test') {
      steps {
        sh 'npm uninstall -g karma'
        sh 'npm install -g karma-cli'
        sh 'ng test --browsers ChromeHeadless'
      }
    }

  }
}