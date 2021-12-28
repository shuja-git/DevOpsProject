pipeline{
    agent any
    stages {
        stage('ansible testing'){
            steps {
                sh 'ansible-playbook 04-tags.yml'
            }
        }
    }
}