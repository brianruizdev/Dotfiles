# GNU Linux

> [!NOTE]
>
> Para `Dual Boot` con `Windows` es necesario configurar la zona horaria con el siguiente comando en `PowerShell` como Admin:
>
> ```sh
> reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /d 1 /t REG_DWORD /f
> ```

## Arch Linux

> [!NOTE]
> Pre-builts [`Omarchy`](https://omarchy.org/) or [`ArchCraft`](https://archcraft.io/).

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

- Installing dotfiles

Una vez completada la instalación minima podemos copiar los dotfiles clonando el repositorio ed GitHub.

```sh
git clone https://github.com/brianruizdev/Dotfiles.git --depth=1
chmod +x ./Dotfiles/install.sh
./Dotfiles/install.sh
```

- Instalamos los siguientes paquetes

```sh
# Hyprland WM
sudo pacman -S hyprland hyprpaper hyprpicker hypridle hyprlock sddm waybar awww
sudo pacman -S kitty ghostty yazi fastfetch btop swaync matugen nwg-look
sudo pacman -S grim slurp cliphist wl-clipboard wl-clip-persist
paru -S wlogout
paru -S walker-bin elephant-bin elephant-providerlist-bin elephant-desktopapplications-bin
```

```sh
# Qtile WM
sudo pacman -S qtile qtile-extras ly polybar feh picom
sudo pacman -S alacritty kitty ranger neofetch htop dunst
sudo pacman -S blueman-applet cbatticon volumeicon lxappearance
sudo pacman -S unclutter scrot
```

```sh
# Essentials
sudo pacman -S zsh uv udiskie rofi nemo firefox
sudo pacman -S lsd bat fzf fd zoxide ripgrep mdcat
sudo pacman -S ffmpeg jq poppler resvg imagemagick
sudo pacman -S curl wget zip unzip tar p7zip
sudo pacman -S wireplumber solaar papyrus
paru -S xdg-user-dirs pokemon-colorscripts-git
```

```sh
# update $HOME directories
xdg-user-dirs-update

# set a wallpaper
awww img ~/.config/wallpapers/fuji.png --transition-type center --transition-fps 120

# set matugen colors
matugen image ~/.config/wallpapers/fuji.png
```

- OhMyZSH

Hay que instalar para cada usuario

```sh
# with curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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

Link simbólico para root (root -> user)

```sh
sudo ln -s -f /home/<user>/.zshrc /root/.zshrc
```

- Hack Nerd Fonts

Download the [`Nerd Fonts`](https://www.nerdfonts.com/font-downloads) from de web site, then:

```sh
sudo unzip /home/brian/Downloads/Hack.zip -d /usr/share/fonts
sudo unzip /home/brian/Downloads/CascadiaCode.zip -d /usr/share/fonts
sudo fc-cache -f -v
rm Hack.zip CascadiaCode.zip
```

- Configuring NeoVim

[Vim-Plug](https://github.com/junegunn/vim-plug)

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# :PlugInstall to install the plugins
```

[LazyVim](https://www.lazyvim.org/)

```sh
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

- Display Manager

```sh
# Remove actual Display Manager
sudo pacman -Rns sddm sddm-kcm # or other DM
sudo rm /etc/systemd/system/display-manager.service
```

```sh
# Pixie SDDM for Hyprland
sudo pacman -S sddm sddm-kcm qt6-declarative qt6-svg qt6-quickcontrols2
paru -S --needed pixie-sddm-git
sudo systemcl enable sddm.service

# configuring
cd /etc/sddm/
sudo nvim sddm.conf
sudo nvim /etc/sddm/themes/pixie/theme.conf
# replace the assets/background.jpg and assets/avatar.jpg

# test
sddm-greeter-qt6 --test-mode --theme /usr/share/sddm/themes/pixie
```

```sh
# LyDM for Qtile
sudo pacman -S ly
sudo systemcl enable ly.service

# configuring
cd /etc/ly/
sudo nvim config.ini
```

- Extra repos:

[`Paru`](https://aur.archlinux.org/packages/paru) (recomended)

```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git ~/.config
cd .config/paru
makepkg -si
```

[`Yay`](https://aur.archlinux.org/packages/yay)

```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay.git ~/.config
cd .config/yay
makepkg -si
```

[`BlackArch`](https://blackarch.org/downloads.html)

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

# You may now install tools from the blackarch repository.

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

- Virtual Machine Manager

```sh
# Update and Install Packages
sudo pacman -Syu --needed qemu-desktop libvirt virt-manager dnsmasq iptables-nft

# Enable and Start libvirtd
sudo systemctl enable --now libvirtd

# Configure User Permissions
sudo usermod -aG libvirt $USER

# Configure Default Network (If Necessary)
sudo virsh net-autostart default
sudo virsh net-start default
```
