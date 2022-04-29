pipeline {
  agent {
    docker {
      image 'timbru31/node-chrome:slim'
    }

  }
  stages {
    stage('Install') {
      steps {
        sh '''mkdir ~/.npm-global
npm config set prefix \'~/.npm-global\'
export PATH=~/.npm-global/bin:$PATH
source ~/.profile
npm install -g jshint'''
        sh 'npm install'
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