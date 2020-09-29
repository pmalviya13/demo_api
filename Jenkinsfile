#!groovy


pipeline {
    agent { dockerfile {
        additionalBuildArgs '-t demo_api'
        reuseNode true
    }}

    stages {

        stage('Deploy') {
            steps {
                echo "current build number: ${currentBuild.number}"
                echo 'Building done $BUILD_NUMBER'
                sh "/user/bin/docker run -p 8000:8000 $BUILD_NUMBER --privileged --pid=host -v /var/run/docker.sock:/var/run/docker.sock"
                
            }
        }
    }
}
