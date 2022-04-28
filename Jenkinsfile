pipeline {
  agent any
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
      agent {
        docker {
          image 'yolch/ng-test-build:latest'
          reuseNode true
        }

      }
      steps {
        sh 'ng test --browsers ChromeHeadlessCustom --watch false'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}