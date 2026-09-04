FROM eclipse-temurin:21-jre

RUN mkdir -p /opt/shinyproxy/ && \
    mkdir -p /opt/shinyproxy/templates && \
    mkdir -p /opt/shinyproxy/assets && \
    wget "https://shinyproxy.io/downloads/shinyproxy-3.2.4.jar" -O \
    /opt/shinyproxy/shinyproxy.jar
    
COPY templates /opt/shinyproxy/templates
COPY assets /opt/shinyproxy/assets

WORKDIR /opt/shinyproxy

EXPOSE 8080

CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
