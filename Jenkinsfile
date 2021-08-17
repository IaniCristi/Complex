pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: "master", url:'https://github.com/IaniCristi/complex.git'
            }
        }
        stage('build&run') {
            steps {
                sh 'docker build -t stephengrider/react-test -f ./client/Dockerfile.dev ./client'
            }
        }
        stage('script') {
            steps {
                sh '/home/iani/complex/deploy.sh'
            }
        }
    }
}