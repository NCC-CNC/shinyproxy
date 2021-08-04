FROM openjdk:8-jre

RUN mkdir -p /opt/shinyproxy/

COPY shinyproxy-2.5.0.jar /opt/shinyproxy/shinyproxy.jar

WORKDIR /opt/shinyproxy

CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
