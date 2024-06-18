# Usa una imagen base oficial de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de requerimientos e instala las dependencias
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copia todo el contenido del proyecto al contenedor
COPY . .

# Ajusta permisos para el directorio de textos legales
RUN chmod -R 755 legal_texts

# Expone el puerto en el que corre la aplicación
EXPOSE 5000

# Define el comando de ejecución de la aplicación
CMD ["python", "app.py"]
