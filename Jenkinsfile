pipeline {
    agent {
        node {
            label 't058-runner'
        }
    }
    stages {
        stage('checkout') {
            steps {
                git credentialsId: 'ca-git-access', branch: 'deploy-on-container', url: "https://git.cloudavise.com/visops/t058/sample-html-app.git"
            }
        }
        stage('install') {
            steps {
                sh "ansible-playbook -i inventory install-docker.yml"
            }
        }
        stage('deploy') {
            steps {
                sh "ansible-playbook -i inventory deploy-docker.yml"
            }
        }
    }
}


