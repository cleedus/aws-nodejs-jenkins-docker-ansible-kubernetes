node {
def registry = 'cleedus/cloudops'
def customImage = ''
def registryCredential = 'dockerhub'
stage('Checkout Repo'){

    checkout scm
}

stage('Build DockerFile'){

    customImage = docker.build("${registry}:${env.BUILD_ID}")
    sh "docker tag $customImage capstone-image"
}
stage('Linting JavaScript'){
customImage.inside{
    sh 'eslint "**/*.js"'
}
}

stage('Upload image to dockerhub'){
    docker.withRegistry('', registryCredential){
    customImage.push('latest')
}
}
stage('Deploy Blue Green'){
    
}
}
