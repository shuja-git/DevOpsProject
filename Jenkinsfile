pipeline{
    agent any
    parameters {
     choice(name: 'ENV', choices: ['DEV', 'PROD'], description: 'choose env')
    string(name: 'COMPONENT', defaultValue: '', description: 'Which app component?')
    }
    stages {
        stage('create server'){
            steps {
                sh 'bash eec2-launch.sh ${COMPONENT}'
            }
        }
        stage('Ansible Playbook run') {
            steps {
            script {
                def ANSIBLE_TAG=toUpperCase({COMPONENT})
             }
                sh 'ansible-playbook -i roboshop.inv roboshop.yml -e ENV=${ENV} -t '
            }
        }
    }
}