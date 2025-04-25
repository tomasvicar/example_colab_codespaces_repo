#!/bin/bash
set -e

# Start VNC server
vncserver -kill :1 || true
vncserver :1 -geometry 1280x800 -depth 24

# Start websockify to expose noVNC
websockify --web=/usr/share/novnc/ 6080 localhost:5901 &

# Export DISPLAY
export DISPLAY=:1

# Optional: Debug output
echo "VNC started on DISPLAY=:1, access http://localhost:6080/vnc.html"

# Keep container running
tail -f /dev/null


