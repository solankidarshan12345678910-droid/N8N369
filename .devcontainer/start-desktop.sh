#!/usr/bin/env bash
set -e

export DISPLAY=:1
export XDG_RUNTIME_DIR="/tmp/runtime-vscode"
mkdir -p "$XDG_RUNTIME_DIR"
chmod 700 "$XDG_RUNTIME_DIR"

# Start a virtual display.
Xvfb :1 -screen 0 1366x768x24 -ac +extension GLX +render -noreset &
sleep 2

# Start XFCE desktop.
dbus-launch --exit-with-session startxfce4 >/tmp/xfce.log 2>&1 &
sleep 5

# Give the desktop a simple Windows-like layout.
xfconf-query -c xsettings -p /Net/ThemeName -s "Default" 2>/dev/null || true
xfconf-query -c xfwm4 -p /general/theme -s "Default" 2>/dev/null || true

# Start a browser in the desktop.
firefox --no-remote --new-instance "https://www.google.com" >/tmp/firefox.log 2>&1 &

# Share the virtual display through VNC, then expose it with noVNC.
x11vnc -display :1 -forever -shared -nopw -rfbport 5901 -listen 127.0.0.1 >/tmp/x11vnc.log 2>&1 &
sleep 2

websockify --web=/usr/share/novnc/ 6080 127.0.0.1:5901 >/tmp/novnc.log 2>&1 &

echo "Cloud desktop is running on port 6080."
echo "Open the forwarded 6080 port in your browser."

wait
