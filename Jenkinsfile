pipeline {
  agent any

  stages {
    stage("Checkout") {
      steps {
        checkout scm
      }
    }

    stage("Test") {
      steps {
        bat 'npm install' // Install dependencies using npm (Windows)
        bat 'npm test' // Run tests using npm (Windows)
      }
    }

    stage("Build") {
      steps {
        bat 'npm run build' // Build the project using npm (Windows)
      }
    }

    stage("Build Image") {
      steps{
        bat 'docker build -t my-node-app:1.0 .'
      }
    }

     stage('Push-Image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker_cred', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
                    // Log in to Docker Hub
                    echo 'Logging in to Docker Hub'
                    // bat 'echo $PASSWORD | docker login -u $USERNAME --password-stdin'
                    bat "docker login -u atishay3012 -p 2362003atishay"

                    // Tag the Docker image
                    bat 'docker tag my-node-app:1.0 "codexdebayan/my-node-app:1.0"'

                    // Push the Docker image to Docker Hub
                    bat 'docker push "atishay3012/my-node-app:1.0"'

                    // Log out from Docker Hub
                    echo 'Logging out from Docker Hub'
                    bat 'docker logout'
                }
            }
        }
    
  }
}
  
