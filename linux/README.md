# GNU Linux

> [!NOTE]
>
> Para `Dual Boot` con `Windows` es necesario configurar la zona horaria con el siguiente comando en `PowerShell` como Admin:
>
> ```sh
> reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /d 1 /t REG_DWORD /f
> ```
>

## Arch Linux

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
> - [`ArchCraft`](https://archcraft.io/):
> Descargamos la ISO directamente desde sus páginas web.
>

A continuación estarán algunos paquetes y herramientas que podrían acomodarse al entorno de tu distro de `Arch Linux`.

El gestor de paquetes por defecto de `Arch` es `pacman`. Posteriormente instalaremos otro gestor como `paru` para expandir nuestros paquetes.

### Instalando Paquetes

- Terminal

```sh
sudo pacman -S kitty ghostty
```

- Neovim

```sh
sudo pacman -S vim neovim
```

```sh
# LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

- Tools

```sh
sudo pacman -S git zsh lsd bat fzf fd zoxide locate mdcat
sudo pacman -S curl wget htop fastfetch zip unzip tar p7zip
sudo pacman -S udiskie nm-applet blueman-applet cbatticon
sudo pacman -S wireplumber volumeicon
sudo pacman -S ranger yazi nemo dunst picom
sudo pacman -S unclutter scrot solaar papyrus
```

```sh
# we need to install PARU repo first
sudo paru -S lazygit
```

Switching to `zsh`:

```sh
# checking the actual shell
echo $SHELL

# super usering
sudo su

# changing shell for user (root and users)
usermod --shell /usr/bin/zsh <user>
# or
chsh -s $(which zsh)
```

Plugins:

- oh-my-zsh

```sh
# we need to install PARU repo first
sudo paru -S zsh-syntax-highlighting zsh-autosuggestions

# with curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# with wget
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- zsh-sudo

```sh
cd /usr/share
sudo su
mkdir zsh-sudo
chown <user>:<user> zsh-sudo/
cd !$
exit
cd zsh-sudo
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh
```

Link simbolico para root (root -> user)

```sh
ln -s -f /home/<user>/.zshrc /root/.zshrc
```

Window Manager:

- Hyprland

```sh
sudo pacman -S hyprland hyprwm hyprlock hyprpanel hyprpaper wofi waybar waypaper
```

```sh
# we need to install PARU repo first
sudo paru -S swww
```

- Qtile

```sh
sudo pacman -S qtile qtile-extras ly feh rofi polybar
```

```sh
# LyDM

# Remove actual Desktop Manager
sudo pacman -Rns sddm sddm-kcm # or other DM
sudo rm /etc/systemd/system/display-manager.service

# now we can enable LyDM
sudo systemcl enable ly.service

# configuring
cd /etc/ly/
sudo nvim config.ini
```

- Virtual Machine Graphics

```sh
pacman -S virtualbox-guest-utils mesa mesa-libgl
```

### Hack Nerd Fonts

Download the [`Nerd Fonts`](https://www.nerdfonts.com/font-downloads) from de web site, then:

```sh
sudo su
cd /usr/share/fonts
mv /home/brian/Downloads/Hack.zip .
unzip Hack.zip
rm Hack.zip
```

### Repositories

Installing additional repos for packages:

- [`Paru`](https://aur.archlinux.org/packages/paru) (recomended)

```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

- [`Yay`](https://aur.archlinux.org/packages/yay)

```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

- [`BlackArch`](https://blackarch.org/downloads.html)

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
