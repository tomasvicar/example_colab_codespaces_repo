sudo apt update
sudo apt install xpra python3-matplotlib python3-tk python3-pip
# sudo apt install xpra python3-pyqt5 python3-pyqt5.qtopengl python3-matplotlib # pyqt alternative


export XDG_RUNTIME_DIR=/tmp/$UID-runtime
mkdir -p $XDG_RUNTIME_DIR
chmod 700 $XDG_RUNTIME_DIR