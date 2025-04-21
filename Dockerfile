FROM eclipse-temurin:21-jdk
WORKDIR /minecraft
RUN apt-get update && apt-get install -y curl
RUN curl -o server.jar https://piston-data.mojang.com/v1/objects/e6ec2f64e6080b9b5d9b471b291c33cc7f509733/server.jar
RUN echo "eula=true" > eula.txt
EXPOSE 25565
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]
