pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/ucfgit/wsdevops5.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("workshop5-app")
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    docker.image("workshop5-app").run("--rm")
                }
            }
        }
    }
}
