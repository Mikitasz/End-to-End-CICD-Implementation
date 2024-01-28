# Jenkins pipeline for portfolio web site
## Table of Contents
- [Description](#description)
- [Plans](#lans)

## Description
This project was created to create a simple CI/CD pipeline in Jenkins. The development object is the CV site itself. This site can be accessed at http://profilelbs-253728117.us-east-1.elb.amazonaws.com/. The site is up and running on weekdays and during business hours for now. This is implemented to save money.

Also the main repository is private as it uses private keys. 

In this simple pipeline development project, Jenkins is triggered every time the code enters the git hub.

The architecture diagram looks something like this:
### Architecture using ECS, ECR, Fargate
![Untitled Diagram drawio (4)](https://github.com/Mikitasz/Portfolio-Public/assets/94795099/36d75179-a222-43a6-bb6d-153c88963eb8)

### Architecture using Docker Hub, EC2
![ec2-prot drawio](https://github.com/Mikitasz/End-to-End-CICD-Implementation-Jenkins/assets/94795099/9446a1a8-8b70-48a1-828e-3fe780bfe6c2)

## Plans

- Make https
- Make domain name such as mikitasz.xyz

