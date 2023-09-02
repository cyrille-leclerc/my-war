pipeline {
    options {
        buildDiscarder(logRotator(numToKeepStr: '5'))
    }
    agent {
      label 'linux'
    }
    stages {
        stage('Build') {
            steps {
                sh (label: 'mvn package', script: './mvnw verify')
                archiveArtifacts artifacts: '**/target/*.war', fingerprint: true 
            }
        }
    }
}
