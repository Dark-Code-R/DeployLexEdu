# Usa una imagen base oficial de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de requerimientos e instala las dependencias
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copia todo el contenido del proyecto al contenedor, incluyendo el directorio legal_texts
COPY . .

# Ajusta permisos para el directorio de textos legales
RUN chmod -R 755 /app/legal_texts

# Expone el puerto en el que corre la aplicación
EXPOSE 5000

# Define el comando de ejecución de la aplicación
CMD ["python", "app.py"]
