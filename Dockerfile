FROM eclipse-temurin:21-jdk
WORKDIR /minecraft
RUN apt-get update && apt-get install -y curl
RUN curl -o server.jar https://github.com/thanhduydevd/minecraft-server/edit/main/Dockerfile
RUN echo "eula=true" > eula.txt
EXPOSE 25565
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]
