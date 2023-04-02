<img align="left" style="vertical-align: middle" width="120" height="120" src="Helium.png">

# libhelium Vala Template

Get started building an amazing app with libhelium & Vala today!

###

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)

![Screenshot](data/icons/app.svg)

> **Note**
> We know this README is barren, we're still working on it. If you have any questions or need help, feel free to join our [Discord](https://discord.gg/5fdPuxTg5Q)!

![Main Window](data/shot.png)

## 🛠️ Dependencies

Please make sure you have these dependencies first before building.

```bash
gtk4
libhelium-1
meson
vala
blueprint-compiler
```

## 🏗️ Building

Simply clone this repo, then:

```bash
meson _build --prefix=/usr && cd _build
sudo ninja install
```
