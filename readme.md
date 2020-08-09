# Cloud DevOps Engineer Nanodegree Program Capstone project
 Use Jenkins, and implement rolling deployment.
 This project deploy a containerized nginx application to ``AWS EKS`` throughout a jenkins pipeline but upload the application image to Docker Hub first after a security scanning.

## Services used
- AWS account
- EC2
- EKS
- Cloudformation
- Jenkins
- Docker
- AQUA Microscanner
- Github
- etc.

## Steps
1. #### Deploy jenkins
    - `create.sh`
        create configured jenkins deployment cloudformation stack
    - `update.sh`
    update configured jenkins deployment cloudformation stack

2. #### Install plugins on Jenkins
    - Blue Ocean
    - Aws piplines steps
    - Aqua Microscanner
3. #### Add credentials
    - AWS credential
    - Docker hub credential
    - Aqua Microscanner token

4. #### Create jenkins piplines
    1. eks_cluster branch
        - this is `eks cluster` creation stack & ``kubectl`` config pipeline
    2. Master branch
        - this is the master pipeline

#### LoadBalancer DNS
    (a3688797ac2744e7c97b0f1a0f53d279-1602794727.eu-west-2.elb.amazonaws.com)

#### Files description
- ``Jenkinsfile``: master pipeline steps
- ``jenkins_infra/Jenkinsfile``: `eks cluster` creation stack & ``kubectl`` config pipeline steps
- ``Dockerfile``: docker app file
- ``kubernetes_infra/deployment-controller.yml``: kubernetes replication controller template
- ``kubernetes_infra/deployment-service.yml``: kubernetes service template to target pods
- ``jenkins_infra/jenkins_network.yml``: cloudformation stack template for network infrastructure creation
- ``jenkins_infra/jenkins_servers.yml``: cloudformation stack template for server creation with jenkins installed
- ``jenkins_infra/network-params.json``: network infrastructure parameters
- ``jenkins_infra/server-params.json``: server parameters
- ``index.html`` : webpage of the app to be deployed

##### Other
- ``screenshots`` : all screenshots taken throughout the project


