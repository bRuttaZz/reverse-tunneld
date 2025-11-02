# Reverse Tunnel Daemon
[![deb-package-build](https://github.com/bRuttaZz/reverse-tunneld/actions/workflows/deb-package.yaml/badge.svg)](https://github.com/bRuttaZz/reverse-tunneld/actions/workflows/deb-package.yaml)


**Nothing special a dead-simple automation script for reverse ssh tunnels**

**But why**
- Nthng wanted a simple script to expose my tcp applications running in home network to the remote ones
- Yes you're completely free to use autossh :)

**Installation?**
- The `.deb` build can be found on the [release page](https://github.com/bRuttaZz/reverse-tunneld/releases/latest)
- easy script?
```sh
curl -Lo reverse-tunneld.deb https://github.com/bRuttaZz/reverse-tunneld/releases/latest/download/reverse-tunneld.deb
sudo dpkg -i reverse-tunneld.deb

# to remove
sudo apt remove reverse-tunneld
```

**Config files?**
- Find it all under `/etc/reverse-tunneld/tunneld-conf-custom.conf` & `/etc/reverse-tunneld/tunneld-conf-shell.conf`.
- Yeah you gotit it's just a ssh [config file](https://www.man7.org/linux/man-pages/man5/ssh_config.5.html). Feel free to follow the same &/ hack.
