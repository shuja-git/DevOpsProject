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
pipeline{
    agent any

    stages {
        stage('Stage1') {
            steps {
                echo 'from stage1 steps1'
                echo 'within the steps1'
            }

        }
    }
}