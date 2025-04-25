#!/bin/bash

export XDG_RUNTIME_DIR="/tmp/${UID}-runtime"
export DISPLAY=":100"

# --- Prepare runtime directory ---
mkdir -p "$XDG_RUNTIME_DIR"
chmod 700 "$XDG_RUNTIME_DIR"

# --- Start Xpra only if not already running ---
if ! xpra info "$DISPLAY" > /dev/null 2>&1; then
    echo "[start_xpra.sh] Xpra server not running, starting now on DISPLAY=$DISPLAY..."
    xpra start "$DISPLAY" --bind-tcp=0.0.0.0:14500 --html=on --daemon=yes
else
    echo "[start_xpra.sh] Xpra server already running on DISPLAY=$DISPLAY."
fi

# --- Final environment confirmation ---
echo "[start_xpra.sh] Environment setup complete:"
echo "  DISPLAY=$DISPLAY"
echo "  XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR"