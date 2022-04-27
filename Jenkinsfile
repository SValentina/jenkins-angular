pipeline {
  agent any
  stages {
    stage('Install') {
      steps {
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
          image 'trion/ng-cli-karma'
        }

      }
      steps {
        sh 'ng test'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}
