FROM eclipse-temurin:17
WORKDIR workspace
LABEL authors="vbukitag"
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} catalog-service.jar

ENTRYPOINT ["java", "-jar", "catalog-service.jar"]