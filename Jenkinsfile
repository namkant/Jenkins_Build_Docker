node {
    def app
    stage('Clone') {
        checkout scm
    }
    stage('Build image') {
        app = docker.build("namkant/nginx")
    }
    stage('Test image') {
        docker.image('namkant/nginx').withRun('-p 8001:80') { c ->
        sh 'docker ps'
        sh 'curl localhost'
    }
}
