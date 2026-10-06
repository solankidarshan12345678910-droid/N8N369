# Windows-like Cloud Desktop for GitHub Codespaces

This project provides a browser-accessible Linux desktop configured to feel familiar to Windows users.

## Important

GitHub Codespaces runs the development container on a virtual machine. This project therefore provides a Linux desktop through noVNC rather than a licensed Windows 10/11 virtual machine.

## Start

1. Open this repository in GitHub Codespaces.
2. Let the dev container build.
3. The desktop service starts on port **6080**.
4. Open the forwarded **6080** port.
5. The noVNC page will show the desktop in your phone browser.

## What is included

- XFCE graphical desktop
- Firefox browser
- File manager and terminal
- Browser-based remote desktop through noVNC
- 1366x768 virtual display

## Resource note

A larger Codespaces machine can make the desktop smoother. GitHub supports different machine types depending on account/repository availability.
