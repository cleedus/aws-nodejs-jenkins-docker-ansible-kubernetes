node {

    def registry = 'cleedus/cloudops'
    def customImage = ''
    def registryCredential = 'dockerhub'
    stage('Preparation'){
        checkout scm
    }
    stage('Build image'){
         customImage = docker.build("${registry}:${env.BUILD_ID}")
    }
    stage('Upload image to dockerhub'){
        docker.withRegistry('', registryCredential){
            customImage.push()
        }
    }

  }
