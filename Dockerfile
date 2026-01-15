# 1. IMAGEN BASE: Usamos un Linux muy ligero que ya tiene Python 3.9 instalado
FROM python:3.9-slim

# 2. DIRECTORIO DE TRABAJO: Creamos una carpeta '/app' dentro del contenedor y nos metemos en ella
WORKDIR /app

# 3. COPIA DE ARCHIVOS: Copiamos todo lo de tu carpeta actual (app.py) a la carpeta '/app' del contenedor
COPY . .

# 4. COMANDO DE ARRANQUE: Le decimos qué debe ejecutar al encenderse
# "python" es el programa y "app.py" es el archivo que le pasamos
CMD ["python", "app.py"]
