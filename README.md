# Windows-like Cloud Desktop for GitHub Codespaces

## Open

[**Open / Resume Cloud Desktop**](https://codespaces.new/solankidarshan12345678910-droid/N8N369?quickstart=1)

This project is designed for use from a phone browser. The graphical desktop is exposed through noVNC on port 6080.

## What you get

- Graphical XFCE desktop — no terminal is required for normal use
- Firefox browser
- File Manager
- Terminal is available inside the desktop only when needed
- Browser-based remote desktop through noVNC
- 1366x768 virtual display
- Port 6080 is automatically forwarded

## Important limitation

GitHub Codespaces uses a Linux-based development environment. This project therefore provides a Windows-like graphical Linux desktop, not a licensed Windows 10/11 virtual machine.

## First launch

1. Open the link above.
2. If GitHub asks to create the Codespace, choose **Create codespace**.
3. Wait for the container to build.
4. Port **6080** is configured to open automatically in the browser.
5. The noVNC graphical desktop will appear.

After the first Codespace is created, the same link with `quickstart=1` can offer the option to resume the existing Codespace. GitHub notes that forwarded ports are private by default and accessible to the Codespace owner after GitHub authentication.

## Repository

https://github.com/solankidarshan12345678910-droid/N8N369
