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
        sh 'npm install karma-coverage-istanbul-reporter --save-dev'
        sh 'ng test --browsers ChromeHeadless'
      }
    }

  }
}