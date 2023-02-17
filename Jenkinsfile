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
                sh 'python3 --version'
                sh 'docker --version'
            }
        }
        stage('Build Python Project') {
            steps {
                sh 'python3 jaldeep_patel.py'
            }
        }
         stage('Jaldeep - Build Docker Image') {
            steps {
                sh 'docker build -t jaldeeppatel/myprojecttest:v0.4 .'
            }
        }
          stage('Jaldeep - Login to Dockerhub') {
            steps {
                withCredentials([string(credentialsId: 'dockerhubpwd1', variable: 'dockerhubpwd1')]) {
                sh 'docker login -u jaldeeppatel -p J@L966de!p#'
}
            }
        }
          stage('Jaldeep - Push image to Dockerhub') {
            steps {
                sh 'docker tag jaldeeppatel/myprojecttest:v0.4 jaldeeppatel/my-test-repository:myprojectimage4'
                sh 'docker push jaldeeppatel/my-test-repository:myprojectimage4'
            }
        }
    }
}