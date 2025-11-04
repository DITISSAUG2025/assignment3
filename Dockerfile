FROM openjdk:17-jdk-slim
WORKDIR /app
COPY hello.java /app
RUN javac hello.java
CMD ["java","hello.java"]
