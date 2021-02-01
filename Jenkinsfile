pipeline {
    agent { docker { image 'gitguardian/ggshield:latest' } }
        
    stages {
        try {
            stage('GitGuardian Scan') {
                environment {
                    CI = 'true'
                }
                steps {
                    echo "Starting analysis with GitGuardian"
                    withCredentials([string(credentialsId: 'gitguardian-api-key', variable: 'GITGUARDIAN_API_KEY')]) {
                        sh 'ggshield scan -v ci'
                    }
                }
            }
        } catch (Exception e) {
           echo "Stage failed, but we continue"  
        }
    }
}
