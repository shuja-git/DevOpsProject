pipeline {
  agent { label 'WORKSTATION' }

  stages {
    stage('Ansible Playbook run') {
      steps {
        sh 'ansible-playbook 04-tags.yml'
      }
    }
  }
}