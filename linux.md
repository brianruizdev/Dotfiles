# GNU Linux - Arch Linux

Para la instalación es recomendable seguir la `guía oficial`, buscar un tutorial de guía ó usar el comando `archinstall` para una instalación por GUI.

> [!NOTE]
> Podemos instalar una pre-built una vez creamos la configuración base de `Arch` usando el siguiente comando para cada caso:
>
> - [`Omarchy`](https://omarchy.org/):
>
> ```sh
> curl -fsSL https://omarchy.org/install | bash
> ```
>
> - [`ArchRiot`](https://archriot.org/):
>
> ```sh
> curl -fsSL https://ArchRiot.org/setup.sh | bash
> ```
>
> - [`ML4W`](https://www.ml4w.com/):
> Instalar los dotfiles de  desde su [GitHub](https://github.com/mylinuxforwork/dotfiles).
>
>
> - [`ArchCraft`](https://archcraft.io/):
> Descargamos la ISO directamente desde sus páginas web.
>

A continuación estarán algunos paquetes y herramientas que podrían acomodarse al entorno de tu distro de `Arch Linux`.

El gestor de paquetes por defecto de `Arch` es `pacman`. Posteriormente instalaremos otro gestor como `paru` para expandir nuestros paquetes.

- Paquetes para uso general de la distro:

```sh
sudo pacman -S udiskie nm-applet blueman-applet cbatticon
sudo pacman -S pipewire wireplumber volumeicon
sudo pacman -S kitty ghostty git vim nano neovim helix
sudo pacman -S zsh oh-my-zsh lsd bat fzf fd zoxide
sudo pacman -S htop neofetch fastfetch
sudo pacman -S ranger nemo dunst picom
sudo pacman -S zip unzip tar 7z curl wget
sudo pacman -S unclutter scrot solaar papyrus
sudo paru -S lazygit
```

```sh
# LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

- Paquetes para uso exclusivo de `Qtile`:

```sh
sudo pacman -S qtile qtile-extras ly feh rofi polybar
```

- Paquetes para uso exclusivo de `Hyprland`:

```sh
sudo pacman -S hyprland hyprwm hyprlock hyprpanel hyprpaper wofi waybar
```

- Paquetes gráficos para uso en `Virtual Machine`:

```sh
pacman -S virtualbox-guest-utils mesa mesa-libgl
```

Instalando repositorios para paquetes adicionales:

- Repo [`Paru`](https://aur.archlinux.org/packages/paru):

```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

- Repo [`Yay`](https://aur.archlinux.org/packages/yay):

```sh
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

- Repo [`BlackArch`](https://blackarch.org/downloads.html):

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

# Note - it maybe be necessary to overwrite certain packages when installing blackarch tools. If you experience "failed to commit transaction" errors, use the --needed and --overwrite switches; For example:
sudo pacman -Syyu --needed --overwrite='*' <wanted-package>
```
