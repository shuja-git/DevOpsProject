pipeline{
    agent any
    stages {
        stage('ansible testing'){
            steps {
                sh 'ansible-playbook 01-simple-playbook.yml'
            }
        }
    }
}