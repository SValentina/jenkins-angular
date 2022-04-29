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
          image 'timbru31/node-chrome:slim'
        }

      }
      steps {
        sh 'npm install'
        sh 'ng test'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}