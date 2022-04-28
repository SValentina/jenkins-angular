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
          image 'avatsaev/angular-chrome-headless'
        }

      }
      steps {
        sh 'npm install -g @angular/cli'
        sh 'ng test --watch=false --browsers=ChromeHeadless'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}