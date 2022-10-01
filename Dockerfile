FROM ubuntu:latest
LABEL maintainer.name="Theyka" \
    maintainer.email="mail@theyka.net" \
    version="1.0" \
    description="BitPing docker image with linux application installed"
ENV ID=
ENV NAME=
ENV EMAIL=
ENV TOKEN=
COPY startup.sh .
RUN apt update -y && apt upgrade -y && apt install wget unzip -y && chmod +x ./startup.sh
ENTRYPOINT [ "./startup.sh" ]
