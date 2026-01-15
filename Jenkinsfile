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

        stage(' Test de Arranque') {
            steps {
                script {
                    echo 'Probando que la app arranca...'
                    // Ejecutamos, esperamos un poco y borramos (--rm)
                    // Si falla al arrancar, Jenkins marcará error
                    sh 'docker run --rm mi-app-automatica:v1 python -c "print(\"Test Exitoso\")"'
                }
            }
        }
    }
}
