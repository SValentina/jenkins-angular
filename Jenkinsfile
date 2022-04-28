pipeline {
  agent {
    docker {
      image 'chromedp/headless-shell'
    }

  }
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
      steps {
        sh 'ng test'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}