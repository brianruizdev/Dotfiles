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

- Installing ArchLinux:

Usamos `archinstall` y hacemos una instalación `minimal` con los paquetes `git`, `neovim` y `gcc`. Una vez finalizado, reiniciamos el sistema.

- Configuramos el wifi con NetworkMaganer

```sh
nmcli dev wifi connect "<name>" password "<pass>"
```

- Actualizamos

```sh
sudo pacman -Syu
```

- Instalamos los siguientes paquetes

```sh
# Hyprland WM
sudo pacman -S hyprland hyprlock hyprpaper hyprlauncher wofi waybar
```

```sh
# Qtile WM
sudo pacman -S qtile qtile-extras feh rofi polybar picom
sudo pacman -S udiskie blueman-applet cbatticon volumeicon
```

```sh
# Essentials
sudo pacman -S kitty ranger yazi nemo dunst firefox fastfetch htop
sudo pacman -S zsh lsd bat fzf fd zoxide mdcat
sudo pacman -S curl wget zip unzip tar p7zip
sudo pacman -S wireplumber unclutter scrot solaar papyrus
```

- Inciamos Hyprland y waybar

```sh
Hyprland
waybar &
```

- OhMyZSH

```sh
# with curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# with wget
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

- Shell switch

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

- Hack Nerd Fonts

Download the [`Nerd Fonts`](https://www.nerdfonts.com/font-downloads) from de web site, then:

```sh
sudo su
cd /usr/share/fonts
mv /home/brian/Downloads/Hack.zip .
unzip Hack.zip
rm Hack.zip
```

Link simbolico para root (root -> user)

```sh
ln -s -f /home/<user>/.zshrc /root/.zshrc
```

```sh
instalamos awww
```

- LazyVim

```sh
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

- Activamos Grub

```sh
sudo pacman -S grub efibootmgr
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ArchLinux
grub -mkconfig -o /boot/grub/grub.cfg
```

- Display Manager

```sh
# Remove actual Display Manager
sudo pacman -Rns sddm sddm-kcm # or other DM
sudo rm /etc/systemd/system/display-manager.service
```

```sh
# Greetd (with sysc-greet) for Hyprland
sudo pacman -S greetd
sudo paru -S sysc-greet-hyprland

# now we can enable LyDM
sudo systemcl enable greetd.service
```

```sh
# LyDM for Qtile
sudo pacman -S ly

# now we can enable LyDM
sudo systemcl enable ly.service

# configuring
cd /etc/ly/
sudo nvim config.ini
```

- Paru

```sh
sudo pacman -S --needed base-devel
cd .config/
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```
