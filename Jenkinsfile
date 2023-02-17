pipeline {
   agent any
    stages {
        stage('Checkout from Git') {
            steps {
               checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/JaldeepSenjaliya/devops-final-project']])
            }
        }
        stage('Version') {
            steps {
                sh 'python --version'
                sh 'docker --version'
            }
        }
        stage('Build Python Project') {
            steps {
                sh 'python jaldeep_patel.py'
            }
        }
         stage('Jaldeep - Build Docker Image') {
            steps {
                sh 'docker build -t jaldeeppatel/myprojecttest:v0.3 .'
            }
        }
          stage('Jaldeep - Login to Dockerhub') {
            steps {
               withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
               sh 'docker login -u jaldeeppatel -p {dockerhubpwd}'
}
            }
        }
          stage('Jaldeep - Push image to Dockerhub') {
            steps {
              sh 'docker push jaldeeppatel/my-test-repository:myprojectimage2'
            }
        }
    }
}