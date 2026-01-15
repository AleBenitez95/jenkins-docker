pipeline {
    agent any

    stages {
        stage(' Descargar Código') {
            steps {
                // Jenkins clona tu repo de GitHub automáticamente aquí
                checkout scm
            }
        }

        stage(' Construir Imagen') {
            steps {
                script {
                    echo 'Construyendo la imagen de Docker...'
                    // Este comando usa el Docker de tu máquina a través del socket
                    sh 'docker build -t mi-app-automatica:v1 .'
                }
            }
        }

	stage('✅ Test de Arranque') {
            steps {
                script {
                    echo 'Probando que la app arranca...'
                    // Esto imprimirá "Python 3.9.x". Si sale, es que funciona.
                    sh 'docker run --rm mi-app-automatica:v1 python --version'
                }
            }
        }                }
            }
        }
    }
}
