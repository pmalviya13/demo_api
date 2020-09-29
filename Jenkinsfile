#!groovy


pipeline {
    agent { dockerfile {
        filename 'demo_api'
        reuseNode true
    }}

    stages {

        stage('Remove old container') {
            steps {
                echo "current build number: ${currentBuild.number}"
                echo 'Building done $BUILD_NUMBER'
                //sh "/user/bin/docker stop demo_api || true && /user/bin/docker rm demo_api || true"
                
            }
        }

        stage('Deploy') {
            steps {
                echo "current build number: ${currentBuild.number}"
                echo 'Building done $BUILD_NUMBER'
                sh "/user/bin/docker stop demo_api || true && /user/bin/docker rm demo_api || true"
                sh "/user/bin/docker run -d -p 8000:8000  --privileged --pid=host -v /var/run/docker.sock:/var/run/docker.sock --name demo_api demo_api"
                
            }
        }
    }
}
