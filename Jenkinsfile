pipeline{
    agent { label 'WORKSTATION' }
    stages {
        stage('ansible testing'){
            steps {
                sh 'ansible-playbook 04-tags.yml'
            }
        }
    }
}