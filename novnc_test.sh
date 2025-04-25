#!/bin/bash
set -e

# --- Ensure xstartup is executable ---
# echo "[*] Making ~/.vnc/xstartup executable..."
# chmod +x ~/.vnc/xstartup

# --- Clean up old VNC locks if they exist ---
echo "[*] Cleaning up old VNC locks..."
rm -f /tmp/.X11-unix/X1
rm -f /tmp/.X1-lock


# --- Prepare VNC password if not exists ---
if [ ! -f ~/.vnc/passwd ]; then
    echo "[*] Setting VNC password..."
    mkdir -p ~/.vnc
    vncpasswd -f <<< "password" > ~/.vnc/passwd
    chmod 600 ~/.vnc/passwd
fi

# --- Start VNC server ---
echo "[*] Starting VNC server..."
vncserver -kill :1 || true
vncserver :1 -geometry 1280x800 -depth 24

# --- Start websockify for noVNC ---
echo "[*] Starting websockify..."
websockify --web=/usr/share/novnc/ 6080 localhost:5901 &
echo "[*] noVNC is available at http://localhost:6080/vnc.html"

# --- Keep container or script alive ---
wait