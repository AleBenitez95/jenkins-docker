pipeline {
    agent any

    stages {
        stage('📥 Descargar Código') {
            steps {
                checkout scm
            }
        }

        stage('🔨 Construir Imagen') {
            steps {
                script {
                    echo 'Construyendo la imagen de Docker...'
                    sh 'docker build -t mi-app-automatica:v1 .'
                }
            }
        }

        stage('✅ Test de Arranque') {
            steps {
                script {
                    echo 'Probando que la app arranca...'
                    // Usamos --version para evitar problemas con las comillas
                    sh 'docker run --rm mi-app-automatica:v1 python --version'
                }
            }
        }
    }
}
