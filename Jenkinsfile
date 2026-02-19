pipeline {
  agent any

  tools {
    maven 'M3'
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/evelynhuang0403/COMP367_Assignment2_Q2.git'
      }
    }

    stage('Build') {
      steps {
        sh 'mvn -version'
        sh 'mvn clean package'
      }
    }
  }

  post {
    success {
      archiveArtifacts artifacts: 'target/*.war', fingerprint: true
    }
  }
}