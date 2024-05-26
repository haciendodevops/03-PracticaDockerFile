# Usa una imagen de Ubuntu como base
FROM ubuntu

# Copia el script Bash al contenedor
COPY miprojecto.sh /app/miproyecto.sh

# Establece el directorio de trabajo en /app
WORKDIR /app

# Establece el script como ejecutable
RUN chmod +x miproyecto.sh

# Ejecuta el script Bash en segundo plano
CMD ["./miproyecto.sh"]