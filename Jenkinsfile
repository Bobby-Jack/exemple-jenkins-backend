pipeline {
    agent any

    stages {
        stage('Deploy with Compose') {
            steps {
                // On s'assure que les fichiers .env sont présents dans le workspace
                sh 'docker-compose -f docker-compose.app.yml up -d --build --remove-orphans'
            }
        }
        
        stage('Check Health') {
            steps {
                sh 'docker ps | grep -E "my-node-app|postgres-db"'
            }
        }
    }
}