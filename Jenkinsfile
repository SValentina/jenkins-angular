pipeline {
  agent {
    docker {
      image 'sivesind/chrome-node-js'
    }

  }
  stages {
    stage('Install') {
      steps {
        sh 'sudo chown -R 1000:1000 "/data/.npm"'
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
}