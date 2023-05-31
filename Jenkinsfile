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
        stage('install') {
            steps{
                    sh "sudo chmod 400 master.pem"
                    sh "sudo ansible-playbook -i inventory install-nginx.yml"
               }
            }
        }
        stage('deploy') {
            steps {
                sh "sudo ansible-playbook -i inventory deploy-nginx.yml"
            }
        }
    }


