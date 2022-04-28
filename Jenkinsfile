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
          image 'chromedp/headless-shell'          
        }
      }
      steps {
        sh 'npm install -g @angular/cli'
        sh 'ng test'
      }
    }

  }
  tools {
    nodejs 'nodejs'
  }
}
