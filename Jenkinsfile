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
                sh 'docker build -t app-capstone:lastest .'
                sh 'docker image ls'                  
            }
        } 
        stage('Security Scan') {
              steps { 
                 aquaMicroscanner imageName: 'nginx:stable-alpine', notCompliesCmd: 'exit 1', onDisallowed: 'fail', outputFormat: 'html'
              }
         }

        stage('Upload image to docker hub'){
            steps{
                withDockerRegistry([url: "", credentialsId: "docker_hub_cred"]) {
                    sh 'echo "Uploading docker image..."'
                    sh 'docker login'
                    sh 'docker tag app-capstone:lastest lassina/app-capstone:lastest'
                    sh 'docker push lassina/app-capstone'
                }
               
            }
        }
        stage('Deploy image to AWS EKS') {
            steps {
                withAWS( region:'eu-west-2', credentials:'aws_cred' ) {
                    sh 'echo "Deploying image to AWS EKS cluster..."'
                    sh 'kubectl config use-context arn:aws:eks:eu-west-2:410572167174:cluster/KubernetesCluster'
                   
                    sh 'kubectl apply -f kubernetes_infra/deployment-controller.yml'
                    sh 'kubectl apply -f kubernetes_infra/deployment-service.yml'
                    sh 'kubectl get nodes --all-namespaces'
                    sh 'kubectl get deployments'
                    sh 'kubectl get pod -o wide'
                    sh 'kubectl get service/app-capstone'
                    sh 'echo "Congratulations! Deployment successful."'
                    sh 'kubectl describe deployment/app-capstone'
                }
            }
        }               
    }
}