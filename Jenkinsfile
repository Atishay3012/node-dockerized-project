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

    stage("Docker push") {
      steps{
        withCredentials([usernamePassword(credentialsId: 'atishay3012', passwordVariable: '2362003atishay', usernameVariable: 'DOCKERHUB_USERNAME')]) {
          bat 'docker login -u %DOCKERHUB_USERNAME% -p %DOCKERHUB_PASSWORD%'
          bat 'docker tag my-node-app:1.0 bashidkk/my-node-app:1.0'
          bat 'docker logout'
        }
      }
    }  
    
  }
}
  
