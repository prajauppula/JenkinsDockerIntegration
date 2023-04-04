pipeline {
    agent any
    tools{
        maven 'maven_3_6_3'
    }
    stages {
        stage('Build Maven') {
            steps {
               checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'jenkin.admin', url: 'https://github.com/prajauppula/JenkinsDockerIntegration']]])
               bat 'mvn clean install'
            }
        }
        stage('Build Docker Image'){
            steps{
                bat 'docker build -t prajauppula/jenkins-docker-integration-img .'
            }
        }
        stage('Push Image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'dockerjenkinspwd', variable: 'dockerjenkinspwd')])  {
                    bat 'docker login -u prajauppula -p Dsaprariha@docker'
                   }  
                    bat 'docker push prajauppula/jenkins-docker-integration-img'
 
                }
            }
        }
    }
}
