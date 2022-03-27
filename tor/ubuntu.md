# ubuntu 20.04

## 安装 flatpak
```
sudo apt install flatpak
```

```
sudo add-apt-repository ppa:flatpak/stable
sudo apt update
sudo apt install flatpak
```

```
sudo apt install gnome-software-plugin-flatpak
```

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

```
reboot
```

## 使用 flatpak 安装 tor
```
flatpak install flathub com.github.micahflee.torbrowser-launcher -y
```

```
flatpak run com.github.micahflee.torbrowser-launcher
```

-[micahflee/torbrowser-launcher](https://github.com/micahflee/torbrowser-launcher#installing-from-the-ppa)
-[Flatpak—the future of application distribution](https://flatpak.org/setup/Ubuntu)