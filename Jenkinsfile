pipeline {

    agent any

    tools {
        jdk 'JAVA_HOME'
        maven 'M2_HOME'
    }

    environment {
        SONARQUBE_CREDENTIALS = credentials('squ_90b82e6ff5bfef91e3a38553ee441f4c9d68ff68') 
    }

    stages {

        stage('GIT') {
            steps {
                git branch: 'main', url: 'https://github.com/ademselmani/atelier-devops.git'
            }
        }

        stage ('Compile Stage') {
            steps {
                sh 'mvn clean compile'
            }
        }

        stage('MVN SONARQUBE') {
            steps {
                sh "mvn sonar:sonar -Dsonar.login=${SONARQUBE_CREDENTIALS} -Dmaven.test.skip=true"
            }
        }
    }
}
