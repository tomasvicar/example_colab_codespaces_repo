# chmod +x start_xpra.sh 
# ./start_xpra.sh
xpra start :100      --bind-tcp=0.0.0.0:14500      --html=on
export DISPLAY=:100
export XDG_RUNTIME_DIR=/tmp/$UID-runtime

# and run python script
# xpra stop :100