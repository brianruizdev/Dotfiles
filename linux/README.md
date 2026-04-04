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

- Instalamos los siguientes paquetes

```sh
# Hyprland WM
sudo pacman -S hyprland hyprpaper hypridle hyprlock hyprlauncher wofi waybar swaync
sudo pacman -S kitty ghostty yazi nemo firefox fastfetch htop
sudo pacman -S zsh lsd bat fzf fd zoxide mdcat
sudo pacman -S uv curl wget zip unzip tar p7zip
sudo pacman -S ffmpeg jq poppler ripgrep resvg imagemagick
sudo pacman -S wireplumber unclutter scrot solaar papyrus
paru -S pokemon-colorscripts-git
```

```sh
# Qtile WM
sudo pacman -S qtile qtile-extras feh rofi polybar picom dunst
sudo pacman -S udiskie blueman-applet cbatticon volumeicon
sudo pacman -S alacritty kitty ranger nemo firefox neofetch htop
sudo pacman -S zsh lsd bat fzf fd zoxide mdcat
sudo pacman -S uv curl wget zip unzip tar p7zip
sudo pacman -S wireplumber unclutter scrot solaar papyrus
```

- OhMyZSH

Hay que instalar para cada usuario

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

Link simbólico para root (root -> user)

```sh
sudo ln -s -f /home/<user>/.zshrc /root/.zshrc
```

- Hack Nerd Fonts

Download the [`Nerd Fonts`](https://www.nerdfonts.com/font-downloads) from de web site, then:

```sh
sudo su
cd /usr/share/fonts
mv /home/brian/Downloads/Hack.zip .
unzip Hack.zip
rm Hack.zip
# unzip Downloads/Hack.zip -d ~/.local/share/fonts
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
# Greetd (with sysc-greet) for Hyprland
sudo pacman -S greetd
paru -S sysc-greet-hyprland

# now we can enable greetdDM
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

- Extra repos:

[`Paru`](https://aur.archlinux.org/packages/paru) (recomended)

```sh
sudo pacman -S --needed base-devel
cd .config
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

[`Yay`](https://aur.archlinux.org/packages/yay)

```sh
sudo pacman -S --needed base-devel
cd .config
git clone https://aur.archlinux.org/yay.git
cd yay
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
