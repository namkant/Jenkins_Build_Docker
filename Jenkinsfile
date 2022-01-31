node {

   def registryProjet='namkant/Jenkins_Build_Docker'
   def IMAGE="${registryProjet}:version-${env.BUILD_ID}"

    stage('Clone') {
          checkout scm
    }

    def img = stage('Build') {
          docker.build("$IMAGE",  '.')
    }

    stage('Run') {
          img.withRun("--name run-$BUILD_ID -p 8002:80") { c ->
            sh 'curl localhost'
          }
    }

    stage('Push') {
          docker.withRegistry('https://github.com/namkant/Jenkins_Build_Docker/') {
              img.push 'latest'
              img.push()
          }
    }

}
