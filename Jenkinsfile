pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh (label: 'mvn package', script: './mvnw verify')
                archiveArtifacts artifacts: '**/target/*.war', fingerprint: true 
            }
        }
    }
}