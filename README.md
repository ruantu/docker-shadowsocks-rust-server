# Docker-Shadowsocks-Rust-Server
Simple Docker Shadowsocks-Rust server image based on Alpine.

## Introductions
This project aims to run commonly used NAS software in Docker.

## How to build

### Build command
`docker build -t ruantu/shadowsocks-rust-server:latest .`

## How to use

### Mapping port
- Proxy Port: 4000 TCP/UDP

### Mounting volumes
- Configuration file: `/etc/shadowsocks-rust/config.json`  

### Software packages
- [shadowsocks-rust-ssurl](https://pkgs.alpinelinux.org/packages?name=shadowsocks-rust-ssurl&branch=edge&repo=&arch=&maintainer=)
- [shadowsocks-rust-ssserver](https://pkgs.alpinelinux.org/packages?name=shadowsocks-rust-ssserver&branch=edge&repo=&arch=&maintainer=)
- [shadowsocks-rust-ssservice](https://pkgs.alpinelinux.org/packages?name=shadowsocks-rust-ssservice&branch=edge&repo=&arch=&maintainer=)
