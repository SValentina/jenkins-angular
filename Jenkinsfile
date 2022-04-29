pipeline {
  agent {
    docker {
      image 'timbru31/node-chrome:slim'
    }

  }
  stages {
    stage('Install') {
      steps {
        sh 'npm install'
        sh 'chown usr:usr /usr/local/lib/node_modules'
        sh 'npm install -g @angular/cli@latest'
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
        sh 'ngtest'
      }
    }

  }
}