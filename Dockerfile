# Usa una imagen base oficial de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de requerimientos y los instala
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copia el código de la aplicación
COPY . .

# Expone el puerto en el que corre la aplicación
EXPOSE 5000

# Define el comando de ejecución de la aplicación usando Gunicorn
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:$PORT"]
