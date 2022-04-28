pipeline {
  agent any
  stages {
    stage('Install') {
      steps {
        sh 'rm -r node_modules/MODULE'
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
      agent {
        docker {
          image 'avatsaev/angular-chrome-headless'
        }

      }
      steps {
        sh 'ng test --watch=false --browsers=ChromeHeadless'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}