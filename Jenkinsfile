pipeline {

 agent any

 tools {jdk 'JAVA_HOME'
        maven 'M2_HOME'}

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

stage('MVN SONARQUBE'){
steps{
sh 'mvn snoar:sonar -Dsonar.login=admin -Dsonar.password=Adem94038666@ -Dmaven.test.skip=true';
}
}

 }

}
