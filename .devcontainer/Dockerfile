FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

ENV DEBIAN_FRONTEND=noninteractive



# install xpra and dependencies - qt5
RUN apt-get update && apt-get install -y \
    sudo \
    xpra \
    libx11-6 \
    libgl1 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*


COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt


ENV UIDTMP=1000
ENV XDG_RUNTIME_DIR=/tmp/$UIDTMP-runtime

RUN mkdir -p $XDG_RUNTIME_DIR && chmod 700 $XDG_RUNTIME_DIR