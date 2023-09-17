pipeline {
  agent any

  stages {
    stage('Checkout source') {
      steps {
        git url: 'https://github.com/fernandokoj3/k8s-fair-api.git', branch: 'main'
      }
    }

    stage('Build Image') {
      steps {
        script {
          dockerapp = docker.build("koj3/fair-api:${env.BUILD_ID}",
            '-f ./Dockerfile .'
          )
        }
      }
    }

    stage('Push Image') {
      steps {
        script {
          // Doing login at dockerhub
          docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            dockerapp.push('latest')
            dockerapp.push("${env.BUILD_ID}")
          }
        }
      }
    }
  }
}
