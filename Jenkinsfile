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
          image 'atools/chrome-headless:java11-node16-latest'
        }

      }
      steps {
        sh 'npm install -g @angular/cli'
        sh 'ng test'
      }
    }

  }
}