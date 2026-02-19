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

    stage('Deploy to Dev (Mock)') {
    	steps {
      	echo "Mock deploy to Kubernetes..."
        echo "kubectl apply -f k8s/deployment.yaml"
			}
		}
}

  post {
    success {
      archiveArtifacts artifacts: 'target/*.war', fingerprint: true
    }
  }
}
