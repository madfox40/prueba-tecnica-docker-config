# Utiliza la imagen de OpenJDK 21 como base
FROM openjdk:21-jdk-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo JAR de tu aplicación al contenedor
COPY build/libs/pruebaAutentiaBack-0.1-all-optimized.jar project.jar

# Expone el puerto 8080 para acceder a la aplicación
EXPOSE 8080

# Comando para ejecutar la aplicación al iniciar el contenedor
CMD ["java", "-jar", "project.jar"]