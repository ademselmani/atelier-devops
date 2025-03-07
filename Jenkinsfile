pipeline {
    agent any

    tools {
        jdk 'JAVA_HOME'
        maven 'M2_HOME'
    }

    stages {

        stage('GIT') {
            steps {
                git branch: 'main', url: 'https://github.com/ademselmani/atelier-devops.git'
            }
        }

        stage('Compile Stage') {
            steps {
                sh 'mvn clean compile'
            }
        }

        // stage('MVN SONARQUBE') {
        //     steps {
        //         sh "mvn sonar:sonar -Dsonar.login=squ_c0931e4b9fc970410f5037c889771f1f9db8c76f -Dmaven.test.skip=true"
        //     }
        // }

        stage('Deploy to Nexus') {
            steps {
                sh 'mvn deploy -Dmaven.test.skip=true'
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t ademselmani/timesheet-devops:1.0 .'
            }
        }

        stage('Deploy Image') {
            steps {
                sh '''
                    docker login -u ademselmani -p 233JFT6118
                    docker push ademselmani/timesheet-devops:1.0
                '''
            }
        }

        stage('Run Docker Compose') {
            steps {
                sh '''
                    docker-compose down
                    docker-compose up
                '''
            }
        }
    }
}
