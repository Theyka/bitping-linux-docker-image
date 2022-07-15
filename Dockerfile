FROM ubuntu:latest
LABEL maintainer.name="Theyka" \
    maintainer.email="mail@theyka.net" \
    version="1.0" \
    description="BitPing docker image with linux application installed"
COPY startup.sh .
RUN apt update -y && apt upgrade -y && apt install wget unzip -y && chmod +x ./startup.sh
ENTRYPOINT [ "./startup.sh" ]
