# . start_xpra.sh or source start_xpra.sh

export XDG_RUNTIME_DIR=/tmp/$UID-runtime
mkdir -p $XDG_RUNTIME_DIR
chmod 700 $XDG_RUNTIME_DIR
xpra start :100      --bind-tcp=0.0.0.0:14500      --html=on
export DISPLAY=:100
export XDG_RUNTIME_DIR=/tmp/$UID-runtime

# and run python script

# xpra stop :100