pipeline {
    agent { dockerfile {
        args '-v /var/run/docker.sock:/var/run/docker.sock -p 81:80'
    }}

    stages {

        stage('Deploy') {
            steps {
                sh "docker run -p 8000:8000 ${BUILD_NUMBER} --privileged --pid=host -v /var/run/docker.sock:/var/run/docker.sock"
                echo 'Building done'
            }
        }
    }
}
