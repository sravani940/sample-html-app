pipeline {
    agent {
        node {
            label 't058-runner'
        }
    }
    stages {
        stage('checkout') {
            steps {
                git credentialsId: 'ca-git-access', branch: 'development', url: "https://git.cloudavise.com/visops/t058/sample-html-app.git"
            }
        }
        stage('install') {
            steps {
                sh "ansible-playbook -i inventory install_nginx.yml"
            }
        }
        stage('deploy') {
            steps {
                sh "ansible-playbook -i inventory deploy_index.yml"
            }
        }
    }
}

