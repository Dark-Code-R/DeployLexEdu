# Usa una imagen base oficial de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de requerimientos y los instala
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código de la aplicación y el directorio legal_texts
COPY . .
RUN chmod -R 755 /app/legal_texts

# Lista los archivos para verificar
RUN ls -la /app/legal_texts

# Verifica el contenido de cada archivo
RUN cat /app/legal_texts/CódigodelasFamiliasydelProcesoFamiliar.txt
RUN cat /app/legal_texts/DerechodelasFamiliasViolenciaFamiliar.txt
RUN cat /app/legal_texts/DiccionarioElConceptoDelDerecho.txt
RUN cat /app/legal_texts/DiccionarioJurídicoBoliviano.txt
RUN cat /app/legal_texts/DiccionarioJurídicoBoliviaLex.txt
RUN cat /app/legal_texts/DiccionarioLaGuardaCompartidaenlaLegislaciónBolivia.txt
RUN cat /app/legal_texts/Diccionariojurídicoelementa.txt
RUN cat /app/legal_texts/ElDerechodeFamiliaenBolivia.txt
RUN cat /app/legal_texts/Eldivorcioylasacóndesvinculatoria.txt
RUN cat /app/legal_texts/LaAsistenciaFamiliar.txt

# Expone el puerto en el que corre la aplicación
EXPOSE 5000

# Define el comando de ejecución de la aplicación
CMD ["python", "app.py"]
