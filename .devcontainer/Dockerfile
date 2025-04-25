FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

ENV DEBIAN_FRONTEND=noninteractive



# install xpra and dependencies for qt5
RUN apt-get update && apt-get install -y \
    sudo \
    xpra \
    libx11-6 \
    libx11-xcb1 \
    libxcb1 \
    libxcb-render0 \
    libxcb-shape0 \
    libxcb-xfixes0 \
    libxcb-glx0 \
    libxrender1 \
    libxi6 \
    libxkbcommon-x11-0 \
    libxtst6 \
    libglib2.0-0 \
    libdbus-1-3 \
    libxext6 \
    libxrandr2 \
    libxcursor1 \
    libxcomposite1 \
    libasound2 \
    libxdamage1 \
    libsm6 \
    libice6 \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-render-util0 \
    libxcb-xinerama0 \
    libqt5widgets5 \
    x11-apps \
    && apt-get clean && rm -rf /var/lib/apt/lists/*


COPY requirements.txt .
RUN python3 -m pip install --no-cache-dir -r requirements.txt


# setup user corectly based on your docker....
ENV UIDTMP=1000
ENV USERTMP=vscode

ENV XDG_RUNTIME_DIR=/tmp/$UIDTMP-runtime
RUN mkdir -p $XDG_RUNTIME_DIR && chmod 700 $XDG_RUNTIME_DIR

COPY start_xpra.sh /home/vscode/start_xpra.sh
RUN chmod +x /home/vscode/start_xpra.sh
RUN echo 'source ~/start_xpra.sh' >> /home/vscode/.bashrc