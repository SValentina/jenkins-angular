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
          image 'juanje/angular-cli-chrome'          
        }

      }
      steps {
        sh 'docker run -it --rm -v ${PWD}:/app juanje/angular-cli-chrome test --no-watch --no-progress'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}
