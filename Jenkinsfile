pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Install') {
      steps {
        sh 'npm cache clean --force'
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
        sh 'npm install karma-coverage-istanbul-reporter'
        sh 'npm install @angular-devkit/build-webpack'
        sh 'npm install @angular-devkit/build-angular'
        sh 'ng test --browsers ChromeHeadless'
      }
    }

  }
}