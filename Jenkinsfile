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
                // --build force la reconstruction de l'image avec le nouveau code
                // -d lance en arrière-plan (detach)
                sh 'docker compose -f docker-compose.app.yml up -d --build'
            }
        }
        
        stage('Check Health') {
            steps {
                sh 'docker ps | grep my-node-app'
            }
        }
       }

//        stage("Install dependencies") {
//            steps {
//                sh 'node --version'
//                sh 'npm --version'
//                sh 'npm install'
//            }
//        }

//      Attention à ne pas faire ceci, car comme constaté
//      jenkins attends que le processus se termine, et comme npm start est un processus qui tourne en continu,
//      le pipeline ne se terminera jamais
//        stage("Start application") {
//            steps {
//                sh 'npm start'
//            }
//        }
    
}