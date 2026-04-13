#!/bin/bash

#
# Instalador para configurar los dotfiles
#

function presentation () {
	echo -e "\n\t=== === === === === === === === ==="
	echo -e "\t===   DotFiles Brian Arch Linux   ==="
	echo -e "\t=== === === === === === === === ===\n\n"
}

function installDependencies () {
	echo -e "\n\tInstalando Dependencias"

	sudo pacman -Syu --noconfirm
	sudo pacman -S --needed --noconfirm hyprland hypridle hyprlock waybar awww
	sudo pacman -S --needed --noconfirm kitty ghostty yazi fastfetch rofi swaync matugen
	sudo pacman -S --needed --noconfirm zsh uv htop udiskie nwg-look nemo firefox
	sudo pacman -S --needed --noconfirm lsd bat fzf fd zoxide ripgrep mdcat
	sudo pacman -S --needed --noconfirm ffmpeg jq poppler resvg imagemagick
	sudo pacman -S --needed --noconfirm curl wget zip unzip tar p7zip
	sudo pacman -S --needed --noconfirm grim slurp cliphist wl-clipboard wl-clip-persist
	sudo pacman -S --needed --noconfirm wireplumber solaar papyrus

	# Install paru
	echo -e "\n\tInstalando Paru (AUR)"
	sudo pacman -S --needed --noconfirm base-devel
	git clone https://aur.archlinux.org/paru.git ~/.config
	(cd ~/.config/paru && makepkg -si)

	# Install AUR packages
	paru -S --needed --noconfirm xdg-user-dirs wlogout pokemon-colorscripts-git

	# Updating directories
	xdg-user-dirs-update

	# Install oh-my-zsh and plugins
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	# Autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

	# Syntax
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

	echo -e "\n\tCambiando la shell a zsh"
	chsh -s $(which zsh)

	# Install Nerd Fonts
	sudo unzip ./fonts/Hack.zip -d /usr/share/fonts
	sudo unzip ./fonts/CascadiaCode.zip -d /usr/share/Fonts
	sudo fc-cache -f -v

	# Install SDDM (with Pixie) for Hyprland
	sudo pacman -S --noconfirm sddm sddm-kcm qt6-declarative qt6-svg qt6-quickcontrols2
	paru -S --noconfirm pixie-sddm-git
	sudo systemcl enable sddm.service

	# Install LazyVim
	git clone https://github.com/LazyVim/starter ~/.config/nvim
	rm -rf ~/.config/nvim/.git
}

function copyFiles () {
	echo -e "\n\tCopiando archivos"

	echo -e "\n\tCopiando Wallpapers"
	cp -r ./wallpapers/ $HOME/.config/wallpapers
	awww img ~/.config/wallpapers/fuji.png --transition-type center --transition-fps 120
	echo -e "\n\tWallpapers listo!"

	echo -e "\n\tCopiando Hyprland"
	if [ -d "$HOME/.config/hypr" ]; then
		echo -e "\n\tExiste el directorio hypr...\n\tCopiando archivos\n"
		cp -r config/hypr/* $HOME/.config/hypr
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/hypr
		cp -r config/hypr/* $HOME/.config/hypr
	fi
	echo -e "\n\tHyprland listo!"

	echo -e "\n\tCopiando Waybar"
	if [ -d "$HOME/.config/waybar" ]; then
		echo -e "\n\tExiste el directorio waybar...\n\tCopiando archivos\n"
		cp -r config/waybar/* $HOME/.config/waybar
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/waybar
		cp -r config/waybar/* $HOME/.config/waybar/
	fi
	echo -e "\n\tWaybar listo!"

	echo -e "\n\tCopiando SDDM"
	if [ -d "$HOME/.config/sddm" ]; then
		echo -e "\n\tExiste el directorio sddm...\n\tCopiando archivos\n"
		cp -r config/sddm/* $HOME/.config/sddm
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/sddm
		cp -r config/sddm/* $HOME/.config/sddm/
	fi
	echo -e "\n\tSDDM listo!"

	echo -e "\n\tCopiando Fastfetch"
	if [ -d "$HOME/.config/fastfetch" ]; then
		echo -e "\n\tExiste el directorio fastfetch...\n\tCopiando archivos\n"
		cp -r config/fastfetch/* $HOME/.config/fastfetch/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/fastfetch
		cp -r config/fastfetch/* $HOME/.config/fastfetch/
	fi
	echo -e "\n\tFastfetch listo!"

	echo -e "\n\tCopiando Kitty"
	if [ -d "$HOME/.config/kitty" ]; then
		echo -e "\n\tExiste el directorio kitty"
		if [ -f "$HOME/.config/kitty/kitty.conf" ]; then
			echo -e "\tExiste el archivo kitty.conf"
			cp -r $HOME/.config/kitty/kitty.conf $HOME/.config/kitty/backup_kitty.conf
			cp -r config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
		else
			echo -e "\n\tNo existe el archivo copiando ...\n"
			cp -r config/kitty/kitty.conf $HOME/.config/kitty/
		fi
	else
		echo -e "\n\tEl directorio no existe copiando...\n"
		cp -r config/kitty/ $HOME/.config/
	fi
	echo -e "\n\tKitty listo!"

	echo -e "\n\tCopiando ZSH"
	if [ -f "$HOME/.zshrc" ]; then
		echo -e "\n\tExiste el archivo .zshrc"
		cp -r $HOME/.zshrc $HOME/.zshrc_backup
	else
		echo -e "\n\tNo existe el archivo, copiando ...\n"
		cp -r home/.zshrc $HOME/
	fi
	source ~/.zshrc
	sudo ln -s -f $HOME/.zshrc /root/.zshrc
	echo -e "\n\tZSH listo!"

	echo -e "\n\tCopiando Rofi"
	if [ -d "$HOME/.config/rofi" ]; then
		echo -e "\n\tExiste el directorio rofi...\n\tCopiando archivos\n"
		cp -r config/rofi/* $HOME/.config/rofi/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/rofi
		cp -r config/rofi/* $HOME/.config/rofi/
	fi
	echo -e "\n\tRofi listo!"

	echo -e "\n\tCopiando Yazi"
	if [ -d "$HOME/.config/yazi" ]; then
		echo -e "\n\tExiste el directorio yazi...\n\tCopiando archivos\n"
		cp -r config/yazi/* $HOME/.config/yazi/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/yazi
		cp -r config/yazi/* $HOME/.config/yazi/
	fi
	echo -e "\n\tYazi listo!"

	echo -e "\n\tCopiando Swaync"
	if [ -d "$HOME/.config/swaync" ]; then
		echo -e "\n\tExiste el directorio swaync...\n\tCopiando archivos\n"
		cp -r config/swaync/* $HOME/.config/swaync/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/swaync
		cp -r config/swaync/* $HOME/.config/swaync/
	fi
	echo -e "\n\tSwaync listo!"

	echo -e "\n\tCopiando Wlogout"
	if [ -d "$HOME/.config/wlogout" ]; then
		echo -e "\n\tExiste el directorio Wlogout...\n\tCopiando archivos\n"
		cp -r config/wlogout/* $HOME/.config/wlogout/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/wlogout
		cp -r config/wlogout/* $HOME/.config/wlogout/
	fi
	echo -e "\n\tWlogout listo!"

	echo -e "\n\tCopiando Matugen"
	if [ -d "$HOME/.config/matugen" ]; then
		echo -e "\n\tExiste el directorio Matugen...\n\tCopiando archivos\n"
		cp -r config/matugen/* $HOME/.config/matugen/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/matugen
		cp -r config/matugen/* $HOME/.config/matugen/
	fi
}

presentation
installDependencies
copyFiles
echo -e "\n\tTODO LISTO!"
