pipeline {

 agent any

 tools {jdk 'jdk17'
        maven 'maven3'}

 stages {

 stage('GIT') {

           steps {

               git branch: 'main',

               url: 'https://github.com/ademselmani/atelier-devops.git'

          }

     }

 stage ('Compile Stage') {

 steps {

 sh 'mvn clean compile'

 }

 }

 }

}
