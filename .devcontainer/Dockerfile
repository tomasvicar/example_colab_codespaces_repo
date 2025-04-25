FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

ENV DEBIAN_FRONTEND=noninteractive



# install xpra and dependencies for qt5
RUN apt-get update && apt-get install -y \
    sudo \
    xfce4 \
    xfce4-goodies \
    tigervnc-standalone-server \
    novnc \
    websockify \
    dbus-x11 \
    x11-xserver-utils \
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


ENV USERTMP=vscode

# --- Setup VNC xstartup script ---
RUN mkdir -p /home/$USERTMP/.vnc
COPY xstartup /home/$USERTMP/.vnc/
RUN chmod +x /home/$USERTMP/.vnc/xstartup


# --- Startup script ---
# COPY start_vnc.sh /start_vnc.sh
# RUN chmod +x /start_vnc.sh


COPY requirements.txt .
RUN python3 -m pip install --no-cache-dir -r requirements.txt


