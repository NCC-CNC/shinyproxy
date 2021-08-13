FROM openjdk:8-jre

RUN mkdir -p /opt/shinyproxy/ && \
    mkdir -p /opt/shinyproxy/templates && \
    mkdir -p /opt/shinyproxy/assets

COPY shinyproxy-2.5.0.jar /opt/shinyproxy/shinyproxy.jar
COPY templates/index.html /opt/shinyproxy/templates/index.html
COPY templates/app.html /opt/shinyproxy/templates/app.html

WORKDIR /opt/shinyproxy

EXPOSE 8080

CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
