# GNU Linux - Arch Linux

> [!WARNING]
> En construcción

A continuación estarán algunos paquetes y herramientas que podrían acomodarse al entorno de tu distro de `Arch Linux`.

[Installation Guide](https://wiki.archlinux.org/title/Installation_guide)

Para instalación sencilla usar el comando `archinstall`.

> [!NOTE]
> No es necesario instalar todo lo presentado a continuación.

## Fuentes

Fuentes necesarias para visualizar `ligatures` e `iconos`:

- [Cascadia Code](https://github.com/microsoft/cascadia-code/releases)
- [Hack Nerd Fonts](https://www.nerdfonts.com/font-downloads)

## General

El gestor de paquetes por defecto en `Arch Linux` es `pacman`. Posteriormente instalaremos otro gestor como `paru` para expandir nuestros paquetes.

### Base

Paquetes para uso general de la distro:

```sh
sudo pacman -S network-manager-@@@@@@@@_y_otras_cosas
sudo pacman -S udiskie nm-applet blueman-applet cbatticon
sudo pacman -S pipewire wireplumber volumeicon
sudo pacman -S kitty git vim nano neovim helix
sudo pacman -S zsh oh-my-zsh lsd bat fzf fd zoxide
sudo pacman -S htop neofetch fastfetch
sudo pacman -S ranger nemo dunst picom
sudo pacman -S zip unzip tar 7z curl wget
sudo pacman -S unclutter scrot solaar papyrus
sudo paru -S lazygit
```

Entornos de `NeoVim`:

- [LazyVim](https://www.lazyvim.org/) (Recomendado)
- [NvChad](https://nvchad.com/)
- [AstroVim](https://astronvim.com/)
- [LunarVim](https://www.lunarvim.org/)

> [!TIP]
> Una vez tengamos instalada una base podemos instalar los dotfiles de [ML4W](https://www.ml4w.com/) desde su [GitHub](https://github.com/mylinuxforwork/dotfiles).

### Qtile

Paquetes para uso exclusivo de `Qtile`:

```sh
sudo pacman -S qtile qtile-extras ly feh rofi polybar
```

### Hyprland

Paquetes para uso exclusivo de `Hyprland`:

```sh
sudo pacman -S hyprland hyprwm hyprlock hyprpanel hyprpaper wofi waybar
```

### Virtual Machine

Paquetes gráficos para uso en maquina virtual

```sh
sudo pacman -S ...
```

## Repositorios

### [Paru](https://aur.archlinux.org/packages/paru)

```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

### [Yay](https://aur.archlinux.org/packages/yay)

```sh
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### [BlackArch](https://blackarch.org/downloads.html)

BlackArch Linux is compatible with existing/normal Arch installations. It acts as an unofficial user repository. Below you will find instructions on how to install BlackArch in this manner.

```sh
# Run https://blackarch.org/strap.sh as root and follow the instructions.

curl -O https://blackarch.org/strap.sh
# Verify the SHA1 sum

echo 76363d41bd1caeb9ed2a0c984ce891c8a6075764 strap.sh | sha1sum -c
# Set execute bit

chmod +x strap.sh
# Run strap.sh

sudo ./strap.sh
# Enable multilib following https://wiki.archlinux.org/index.php/Official_repositories#Enabling_multilib and run:

sudo pacman -Syu
```

You may now install tools from the blackarch repository.

```sh
# To list all of the available tools, run

sudo pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u
# To install a category of tools, run

sudo pacman -S blackarch-<category>
# To see the blackarch categories, run

sudo pacman -Sg | grep blackarch
# To search for a specific package, run

pacman -Ss <package_name>
# Note - it maybe be necessary to overwrite certain packages when installing blackarch tools. If
# you experience "failed to commit transaction" errors, use the --needed and --overwrite switches
# For example:

sudo pacman -Syyu --needed --overwrite='*' <wanted-package>
```
