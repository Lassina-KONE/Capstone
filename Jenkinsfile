pipeline {
    agent any

    stages {        
        stage('Lint HTML') {
            steps {
                sh 'echo "HTML linting..."'
                sh 'tidy -q -e *.html'
            }
        }
        stage('HadoLint Dockerfile') {
            steps {
                sh 'echo "Dockerfile linting..."'
                sh 'hadolint Dockerfile'
            }
        }    
        stage( 'Build docker image for app' ) {
            steps {
                sh 'echo "Building and tagging docker image..."'
                sh 'docker build -t app:lastest .'
                sh 'docker image ls'                  
            }
        } 
        stage('Security Scan') {
              steps { 
                 aquaMicroscanner imageName: 'nginx:latest', notCompliesCmd: 'exit 1', onDisallowed: 'fail', outputFormat: 'html'
              }
         }               
    }
}