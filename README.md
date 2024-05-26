# 03-PracticaDockerFile

## OBJETIVO
Clona el repositorio a tu máquina local, crea una nueva rama de Git, realiza los cambios necesarios y sube tu rama al repositorio de GitHub.

---

## TAREAS

### 0. Clonar el Repositorio y Crear una Nueva Rama de Git

1. **Clonar el repositorio**:
    - Usa el comando `git clone` para clonar este repositorio a tu máquina local.
    - Ejemplo:
      ```sh
      git clone https://github.com/tu_usuario/tu_repositorio.git
      ```
2. **Crear una nueva rama**:
    - Navega al directorio clonado y crea una nueva rama con tu nombre:
      ```sh
      cd repositorio
      git checkout -b task/tu_nombre
      ```
    - Ejemplo:
      ```sh
      git checkout -b task/MaxiHerrera
      ```

### 1. Solucionar el Problema

1. **Construir la imagen Docker**:
    - Ejecuta el siguiente comando:
      ```sh
      docker build -t haciendodevops .
      ```
    - **Nota**: Habrá un error en la salida del Dockerfile. Trata de solucionarlo leyendo detenidamente, si te fijas detenidamente y te das tu tiempo de leer y pensar (que es lo mejor), seguro lo solucionas sin tener que buscar en la documentación.
2. **Ejecutar el contenedor**:
    - Una vez solucionado el problema, ejecuta:
      ```sh
      docker run haciendodevops
      ```
    - Deberías ver en la salida la misma leyenda que está en el archivo `miproyecto.sh` durante 30 segundos.

3. **Nota**: Antes de ejecutar el primer `docker build`, puedes cambiar la variable `$NOMBRE` en el archivo `miproyecto.sh` para jugar un poco y conocer la nomenclatura del código y su funcionamiento.

### 2. Cambiar la Imagen del Contenedor

1. **Modificar el Dockerfile**:
    - Cambia la línea de la imagen base a:
      ```dockerfile
      FROM python:latest
      ```

2. **Construir la nueva imagen Docker**:
    - Ejecuta los siguientes comandos:
      ```sh
      docker build -t haciendodevops_python .
      docker images
      ```
    - **Observa la diferencia** en el tamaño y las capas de las imágenes utilizadas.

### 3. Subir el Repositorio a GitHub

1. **Agregar y commitear los cambios**:
    - Agrega todos los archivos actualizados a la rama:
      ```sh
      git add .
      ```
    - Agrega un comentario a los cambios hechos:
      ```sh
      git commit -m "Se actualizan cambios"
      ```

2. **Subir los cambios**:
    - Sube los cambios a tu rama en GitHub:
      ```sh
      git push origin task/tu_nombre
      ```

---

## Notas Finales

- Asegúrate de seguir cada paso detalladamente.
- Si encuentras algún problema, tómate tu tiempo para leer y entender los mensajes de error.
- No dudes en consultarme si tienes alguna duda. Buen despliegue 🚀
