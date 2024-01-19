pipeline {
	agent any
	environment {
        registryCredential = 'ecr:us-east-1:awscred'
        appRegistry = "420276061453.dkr.ecr.us-east-1.amazonaws.com/portfolio"
        PortfolioRegistry = "https://420276061453.dkr.ecr.us-east-1.amazonaws.com"
        cluster = "Portfolio"
        service = "profileappsrc"

    }

	stages {
		stage('Fetch code'){
			steps{
				git branch: 'main', url: 'git@github.com:Mikitasz/Portfolio-CV.git'
				}
			}

	    stage('Build App Image') {
            steps {
                script {
                    dockerImage = docker.build( appRegistry + ":$BUILD_NUMBER", ".")
                }
            }
        }


        stage('Upload App Image') {
            steps{
                script {
                    docker.withRegistry(PortfolioRegistry, registryCredential ) {
                        dockerImage.push("$BUILD_NUMBER")
                        dockerImage.push('latest')
                    }
                   }
            }
        }

         stage('Deploy to ecs') {
             steps {
                withAWS(credentials: 'awscred', region: 'us-east-1') {
                    sh 'aws ecs update-service --cluster ${cluster} --service ${service} --force-new-deployment'
                }
             }
         }
	}
}

