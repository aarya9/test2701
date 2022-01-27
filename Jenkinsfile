pipeline {
    agent any

    environment {
        EMAIL_TO = 'raghavjaggu@gmail.com'
    }
    stages {

        stage('Git checkout') {
                steps {
                    git credentialsId: '7f3ba6a0-5b4f-43ea-92f9-6221d78fc666', url: 'https://github.com/aarya9/test2701.git'
                }
            }
    
        stage('terraform init') {
            steps {
                echo 'Hello World'
                sh 'cd dev' 
                sh label:'', script:'terraform init'
            }
        }
        stage('terraform plan') {
            steps {

                sh label:'', script:'terraform plan'
            }
        }
        stage('terraform apply') {
            steps {
 
                sh label:'', script:'terraform apply --auto-approve'
            }
        }
    }
    post {
        failure {
            emailext body: 'Check console output at $BUILD_URL to view the results. \n\n ${CHANGES} \n\n -------------------------------------------------- \n${BUILD_LOG, maxLines=100, escapeHtml=false}', 
                    to: "${EMAIL_TO}", 
                    subject: 'Build failed in Jenkins: $PROJECT_NAME - #$BUILD_NUMBER'
        }
    }
}
