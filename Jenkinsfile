pipeline {
    agent { docker { image 'gitguardian/ggshield:latest' } }
    stages {
        stage('GitGuardian Scan') {
            steps {
                echo "Starting analysis with GitGuardian"
                withCredentials([string(credentialsId: 'gitguardian-api-key', variable: 'TOKEN')]) {
                    withEnv(["GITGUARDIAN_API_KEY=$TOKEN"]) {
                        sh 'env'
                        sh 'ggshield scan ci'
                    }
                }
            }
        }
    }
}
