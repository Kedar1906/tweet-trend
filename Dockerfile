FROM openjdk:8
ADD target/*.jar ttrend.jar
ENTRYPOINT ["java", "-jar", "ttrend.jar"]