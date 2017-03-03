pipeline {
    agent any 

    stages {
        stage('Validate') { 
            steps { 
                sh 'echo Validate' 
                git credentialsId: 'cf23352b-3581-4458-a665-fa4dc64f60a4', url: 'git@github.com:rj-reilly/app_jenkins.git'
            }
        }
        stage('Accept'){
            steps {
                sh 'echo Accept'
            }
        }
        stage('Deliver') {
            steps {
                sh 'echo Deliver'
            }
        }
         stage('BuildDev') {
            steps {
                sh 'echo "Build Dev"'
            }
        }
         stage('IntestdDev') {
            steps {
                sh 'echo "Build IntestDev"'
            }
        }
         stage('BuildQA') {
            steps {
                sh 'echo "Build QA"'
            }
        }
         stage('IntestQA') {
            steps {
                sh 'echo "Build IntestQA"'
            }
        }
         stage('BuildUAT') {
            steps {
                sh 'echo "Build UAT"'
            }
        }
         stage('IntestUAT') {
            steps {
                sh 'echo "Build IntestUAT"'
            }
        }
        stage('BuildProd') {
            steps {
                sh 'echo "Build Prod"'
            }
        }
         stage('IntestProd') {
            steps {
                sh 'echo "Build IntestProd"'
            }
        }
         stage('DestroyOldProd') {
            steps {
                sh 'echo "Destroy Old Prod"'
            }
        }
    }
}