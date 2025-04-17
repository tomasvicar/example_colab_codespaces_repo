
sudo apt update
sudo apt install -y xfce4 xfce4-goodies tigervnc-standalone-server novnc websockify dbus-x11

vncpasswd



cat <<'EOF' > ~/.vnc/xstartup
#!/bin/bash
export XKL_XMODMAP_DISABLE=1
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS

# Wait for X socket to become available
for i in {1..20}; do
    if xdpyinfo -display $DISPLAY >/dev/null 2>&1; then
        break
    fi
    echo "Waiting for X server..."
    sleep 0.5
done

xrdb $HOME/.Xresources 2>/dev/null || true

# Start XFCE
exec startxfce4
EOF

chmod +x ~/.vnc/xstart

vncserver -kill :1
vncserver :1 -geometry 1280x800 -depth 24
websockify --web=/usr/share/novnc/ 6080 localhost:5901


export DISPLAY=:1
python3 matplotlib_script.py