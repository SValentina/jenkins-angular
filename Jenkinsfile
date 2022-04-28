pipeline {
  agent {
    docker {
      image 'avatsaev/angular-chrome-headless'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'ng build'
      }
    }

    stage('Test') {
      steps {
        sh 'ng test --watch=false --browsers=ChromeHeadless'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}