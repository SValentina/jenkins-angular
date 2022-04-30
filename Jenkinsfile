pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Install') {
      steps {
        sh 'npm install'
      }
    }

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