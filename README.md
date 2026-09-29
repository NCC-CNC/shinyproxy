# shinyproxy

[![lifecycle](https://img.shields.io/badge/Lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html)
[![Docker Status](https://img.shields.io/docker/cloud/build/naturecons/shinyproxy?label=Docker%20build)](https://hub.docker.com/r/naturecons/shinyproxy)

This repository contains files to run [ShinyProxy](https://www.shinyproxy.io/) inside a [Docker container](https://www.docker.com/). It also contains a customized HTML template for the landing page (see `templates/index.html`) and web application containers (see `templates/app.html`). These templates provide the same functionality as the standard ShinyProxy pages, except that web applications can now have an optional Google Analytics support (see `application.yml` for example).

## Usage

This repository contains an example web application that can be launched using [ShinyProxy](https://www.shinyproxy.io/) inside a Docker container. Specifically, the example web application hosts a series of example [Shiny web applications](https://shiny.rstudio.com/). To run this example, use the following system command:

```
docker-compose up --build
```

After running this command, you can view the application at [http://localhost:8080](http://localhost:8080). You'll be prompted to sign in first — use `demo` / `demo` — which lets you view all three custom templates in one run: the sign-in page (`templates/login.html`), the landing page (`templates/index.html`), and the app container page (`templates/app.html`, reachable by launching any of the demo apps). You can also find log files for the ShinyProxy server inside the `shinyproxy-logs/server` directory, and log files for the Shiny web applications inside the `shinyproxy-logs/container` directory.

Finally, when you have finished running the example application, use the following system command to terminate it:

```
docker-compose down
```
