pipeline {
    agent any

    environment {
        EMAIL_TO = 'raghavjaggu@gmail.com'
    }
    stages {
        stage('Hello') {
            steps {
                echoo 'Hello World'
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
