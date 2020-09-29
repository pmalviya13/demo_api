#!groovy


pipeline {
    agent { dockerfile {
        filename 'demo_api'
        reuseNode true
    }}

    stages {

        stage('Deploy') {
            steps {
                echo "current build number: ${currentBuild.number}"
                echo 'Building done $BUILD_NUMBER'
                sh "docker stop demo_api || true && docker rm demo_api || true
                sh "/user/bin/docker run -d -p 8000:8000  --privileged --pid=host -v /var/run/docker.sock:/var/run/docker.sock --name demo_api demo_api"
                
            }
        }
    }
}
