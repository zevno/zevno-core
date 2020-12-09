
Debian
====================
This directory contains files used to package zevnod/zevno-qt
for Debian-based Linux systems. If you compile zevnod/zevno-qt yourself, there are some useful files here.

## zevno: URI support ##


zevno-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install zevno-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your zevno-qt binary to `/usr/bin`
and the `../../share/pixmaps/zevno128.png` to `/usr/share/pixmaps`

zevno-qt.protocol (KDE)

