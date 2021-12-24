// pipeline {
//   agent { label 'WORKSTATION' }
//
//   stages {
//     stage('Ansible Playbook run') {
//       steps {
//         sh 'ansible-playbook 04-tags.yml'
//       }
//     }
//   }
// }
pipeline {
    agent any
    stages  {
        stage('Ansible playbook run') {
            steps {
             sh 'echo Hello'
            }
        }
    }
}
// pipeline {
//     agent any
//
//     stages {
//         stage('Hello') {
//             steps {
//                 echo 'Hello World'
//             }
//           }
//         stage('Hi'){
//             steps{
//                 echo 'Hi World'
//             }
//         }
//     }
// }
// within 1 stage 2 steps not permitted
// pipeline{
//     agent any
//
//     stages {
//         stage('Stage1') {
//             steps {
//               sh '''echo Hello world
//               echo Bye world'''
//
//         }
//     }
// }