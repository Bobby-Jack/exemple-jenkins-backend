pipeline {
//    agent {
//        docker {
//            image 'node:24-alpine'
//        }
//    }

    agent any

    environment {
        DB_HOST = '127.0.0.1'
        DB_USER = 'db_user'
        DB_PASSWORD = 'db_password'
        DB_NAME = 'db_name'
    }

    stages {
       stage('Deploy with Compose') {
            steps {
           
                sh 'docker-compose up -d --build -f docker-compose.app.yml'
            }
        }
        
        stage('Check Health') {
            steps {
                sh 'docker ps | grep my-node-app'
            }
        }
       }

}