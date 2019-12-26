pipeline {

    //Agent -> Docker with Node (latest) as its base image 
    agent {
        docker {
            image: 'node'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'About to install packages'
                sh 'npm install'
            }
        }
    }
}