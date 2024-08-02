# Sample Dockerfile

# Indicates that the windowsservercore image will be used as the base image.
# https://hub.docker.com/r/microsoft/windows-servercore
FROM mcr.microsoft.com/windows/servercore:ltsc2022

LABEL repo="github.com/kelvintaywl-cci/docker-windows"

# Uses dism.exe to install the IIS role.
RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart

# Creates an HTML file and adds content to this file.
RUN echo "Hello World - Dockerfile" > c:\inetpub\wwwroot\index.html

# Sets a command or process that will run each time a container is run from the new image.
CMD [ "cmd" ]
