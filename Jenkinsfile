pipeline {
    agent {
        node {
            label 't058-runner'
        }
    }
    stages {
        stage('checkout') {
            steps {
                git credentialsId: 'ca-git-access', branch: 'dev', url: "https://git.cloudavise.com/visops/t058/sample-html-app.git"
            }
        }
        stage('prepare') {
            steps {
                sh "chmod +x deploy_script.sh"
                sh "sudo ./deploy_script.sh prepare"
            }
        }
        stage('deploy') {
            steps {
                sh "./deploy_script.sh deploy"
            }
        }
    }
}

