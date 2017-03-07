pipeline {
    agent any   
      stages {
        stage('Validate') { 
            steps { 
                sh 'echo Validate' 
                sh 'pwd;ls -al'
                sh 'chef exec rspec --format documentation --color'
                artifactoryUpload('*.*')

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
         stage('AcceptanceDev') {
            steps {
                sh 'echo "Build AcceptanceDev"'
            }
        }
        stage('ReleaseDev') {
            steps {
                sh 'echo "Release Dev"'
            }
        }
         stage('BuildQA') {
            steps {
                sh 'echo "Build QA"'
            }
        }
         stage('AcceptanceQA') {
            steps {
                sh 'echo "Build AcceptanceQA"'
            }
        }
        stage('ReleaseQA') {
            steps {
                sh 'echo "Release QA"'
            }
        }
         stage('BuildUAT') {
            steps {
                sh 'echo "Build UAT"'
            }
        }
         stage('AcceptanceUAT') {
            steps {
                sh 'echo "Build AcceptanceUAT"'
            }
        }
        stage('ReleaseUAT') {
            steps {
                sh 'echo "Release UAT"'
            }
        }
        stage('BuildProd') {
            steps {
                sh 'echo "Build Prod"'
            }
        }
         stage('AcceptanceProd') {
            steps {
                sh 'echo "Build AcceptanceProd"'
            }
        }
        stage('ReleaseProd') {
            steps {
                sh 'echo "Release Prod"'
            }
        }
    }
}
