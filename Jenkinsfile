pipeline {
    agent any   
      stages {
        stage('Validate') { 
            steps { 
                sh 'echo Validate' 
                sh 'pwd;ls -al'
                sh 'chef exec rspec --format documentation --color'
                }
                node {
                 def server = Artifactory.newServer url: 'http://localhost:8081/artifactory/', username: 'admin', password: 'AP2ChSxo2hgSLAbgc5QEAnDrjqr'

                    def uploadSpec = """{
                    "files": [
                        {
                            "pattern": "*.*",
                            "target": "app_jenkins/$BUILDID/"
                        }
                     ]
                }"""
                server.upload(uploadSpec)
                
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
