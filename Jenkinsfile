pipeline {
    agent { label 'WORKSTATION'}

    stages {
        stage('ansible playbook run') {
            steps {
                sh 'ansible-playbook 04-tags.yml'
            }
        }
    }
}