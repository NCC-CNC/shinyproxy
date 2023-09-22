FROM openjdk:8-jre

RUN mkdir -p /opt/shinyproxy/ && \
    mkdir -p /opt/shinyproxy/templates && \
    mkdir -p /opt/shinyproxy/assets

COPY templates-3.0.2 /opt/shinyproxy/templates

WORKDIR /opt/shinyproxy

EXPOSE 8080

CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
