pipeline {
    agent { docker { image 'python:3.8' } }
    stages {
        stage('GitGuardian Scan') {
            steps {
                echo "Starting analysis with GitGuardian"
                sh 'pip install ggshield'
                withCredentials([string(credentialsId: 'gitguardian-api-key', variable: 'TOKEN')]) {
                    withEnv(["GITGUARDIAN_API_KEY=$TOKEN"]) {
                        sh 'ggshield scan ci'
                    }
                }
            }
        }
    }
}
