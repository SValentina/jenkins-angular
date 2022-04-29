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
        sh 'sudo chown -R $USER /usr/local/lib/node_modules'
        sh 'npm install'
        sh 'npm remove -g angular-cli'
        sh 'npm install -g @angular/cli@latest'
        sh 'npm install karma-coverage-istanbul-reporter --save-dev'
        sh 'npm test'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}