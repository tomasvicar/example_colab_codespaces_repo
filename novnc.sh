# this works  - replace start_vnc with this

sudo chmod +x ~/.vnc/xstartup
rm /tmp/.X11-unix/X1
rm /tmp/.X1-lock 
y
sudo vncserver :1 -geometry 1280x800 -depth 24
password
password
n
websockify --web=/usr/share/novnc/ 6080 localhost:5901
