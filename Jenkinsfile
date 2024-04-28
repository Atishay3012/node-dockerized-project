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
        sh 'sudo apt update && sudo apt install -y npm' // Update package list and install npm
        sh 'npm install' // Install dependencies
        sh 'npm test' // Run tests
      }
    }

    stage("Build") {
      steps {
        sh 'npm run build' // Build the project
      }
    }
  }
}
