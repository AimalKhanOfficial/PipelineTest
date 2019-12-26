pipeline {
  agent any

  tools {nodejs "nodejs"}

  stages {
    stage('Build') {
      steps {
        sh 'npm install'
        sh 'npm build'
      }
    }
    stage('Test') {
      steps {
        sh 'npm test'
      }
    }
  }
}