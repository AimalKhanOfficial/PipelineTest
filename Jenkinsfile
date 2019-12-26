pipeline {

    //Agent -> Docker with Node (latest) as its base image 
    //agent {
        //dockerfile true
    //}

    agent any

    stages {
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm build'
            }
        }
    }
}