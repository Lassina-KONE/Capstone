# Cloud DevOps Engineer Nanodegree Program Capstone project
 Use Jenkins, and implement rolling deployment.

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
1. Deploy jenkins
    - `create.sh`
        create configured jenkins deployment cloudformation stack
    - `update.sh`
    update configured jenkins deployment cloudformation stack

2. Install plugins on Jenkins
    - Blue Ocean
    - Aws piplines steps
    - Aqua Microscanner
3. Add credentials
    - AWS credential
    - Docker hub credential
    - Aqua Microscanner token

3. Create jenkins piplines
    1. eks_cluster branch
        - this is `eks cluster` creation stack & ``kubectl`` config pipeline
    2. Master branch
        - this is the master pipeline

#### LoadBalancer DNS
    [here](a3688797ac2744e7c97b0f1a0f53d279-1602794727.eu-west-2.elb.amazonaws.com)


