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
	if ! command -v paru &> /dev/null; then
		echo "Instalando Paru..."
		sudo pacman -S --needed --noconfirm base-devel
		git clone https://aur.archlinux.org/paru.git
		(cd paru && makepkg -si --noconfirm)
		rm -rf ./paru
	else
		echo -e "\n\tParu ya está instalado!"
	fi

	# Install AUR packages
	paru -S --needed --noconfirm xdg-user-dirs wlogout pokemon-colorscripts-git

	# Updating directories
	xdg-user-dirs-update

	# Install oh-my-zsh and plugins
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	# Autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

	# Syntax
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

	# Changing shell to ZSH
	echo -e "\n\tCambiando la shell a zsh"
	chsh -s $(which zsh)

	# Install Nerd Fonts
	sudo unzip ./fonts/Hack.zip -d /usr/share/fonts
	sudo unzip ./fonts/CascadiaCode.zip -d /usr/share/Fonts
	sudo fc-cache -f -v

	# Install SDDM (with Pixie) for Hyprland
	sudo pacman -S --noconfirm sddm sddm-kcm qt6-declarative qt6-svg qt6-quickcontrols2
	sudo systemcl enable sddm.service
	paru -S --noconfirm pixie-sddm-git

	# Install LazyVim
	echo -e "\n\tInstalando LazyVim"
	git clone https://github.com/LazyVim/starter ~/.config/nvim
	rm -rf ~/.config/nvim/.git

	echo -e "\n\t¡Instalaciones completas!"
}

function copyFiles () {
	echo -e "\n\tCopiando archivos"

	echo -e "\n\tCopiando Wallpapers"
	cp -r $HOME/Dotfiles/wallpapers/ $HOME/.config/wallpapers
	awww img $HOME/.config/wallpapers/fuji.png --transition-type center --transition-fps 120
	echo -e "\n\t¡Wallpapers listo!"

	echo -e "\n\tCopiando Hyprland"
	if [ -d "$HOME/.config/hypr" ]; then
		echo -e "\n\tExiste el directorio hypr...\n\tCopiando archivos\n"
		cp -r $HOME/Dotfiles/config/hypr/* $HOME/.config/hypr
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		cp -r $HOME/Dotfiles/config/hypr $HOME/.config/
	fi
	echo -e "\n\t¡Hyprland listo!"

	echo -e "\n\tCopiando Waybar"
	if [ -d "$HOME/.config/waybar" ]; then
		echo -e "\n\tExiste el directorio waybar...\n\tCopiando archivos\n"
		cp -r $HOME/Dotfiles/config/waybar/* $HOME/.config/waybar
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"cp -r
		cp -r $HOME/Dotfiles/config/waybar $HOME/.config/
	fi
	echo -e "\n\t¡Waybar listo!"

	echo -e "\n\tCopiando SDDM"
	if [ -d "$HOME/.config/sddm" ]; then
		echo -e "\n\tExiste el directorio sddm...\n\tCopiando archivos\n"
		cp -r $HOME/Dotfiles/config/sddm/* $HOME/.config/sddm
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		cp -r $HOME/Dotfiles/config/sddm $HOME/.config/
	fi
	echo -e "\n\t¡SDDM listo!"

	echo -e "\n\tCopiando Fastfetch"
	if [ -d "$HOME/.config/fastfetch" ]; then
		echo -e "\n\tExiste el directorio fastfetch...\n\tCopiando archivos\n"
		cp -r $HOME/Dotfiles/config/fastfetch/* $HOME/.config/fastfetch/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		cp -r $HOME/Dotfiles/config/fastfetch $HOME/.config/
	fi
	echo -e "\n\t¡Fastfetch listo!"

	echo -e "\n\tCopiando Kitty"
	if [ -d "$HOME/.config/kitty" ]; then
		echo -e "\n\tExiste el directorio kitty...\n\tCopiando archivos\n"
		cp -r $HOME/Dotfiles/config/kitty/* $HOME/.config/kitty/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"

		cp -r $HOME/Dotfiles/config/kitty $HOME/.config/
	fi
	echo -e "\n\t¡Kittylisto!"

	echo -e "\n\tCopiando ZSH"
	if [ -f "$HOME/.zshrc" ]; then
		echo -e "\n\tExiste el archivo .zshrc"
		cp -r $HOME/.zshrc $HOME/.zshrc_backup
	else
		echo -e "\n\tNo existe el archivo, copiando ...\n"
		cp -r $HOME/Dotfiles/home/.zshrc $HOME/
	fi
	source $HOME/.zshrc
	sudo ln -s -f $HOME/.zshrc /root/.zshrc
	echo -e "\n\t¡ZSH listo!"

	echo -e "\n\tCopiando Rofi"
	if [ -d "$HOME/.config/rofi" ]; then
		echo -e "\n\tExiste el directorio rofi...\n\tCopiando archivos\n"
		cp -r $HOME/Dotfiles/config/rofi/* $HOME/.config/rofi/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		cp -r $HOME/Dotfiles/config/rofi $HOME/.config/
	fi
	echo -e "\n\t¡Rofi listo!"

	echo -e "\n\tCopiando Yazi"
	if [ -d "$HOME/.config/yazi" ]; then
		echo -e "\n\tExiste el directorio yazi...\n\tCopiando archivos\n"
		cp -r $HOME/Dotfiles/config/yazi/* $HOME/.config/yazi/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		cp -r $HOME/Dotfiles/config/yazi $HOME/.config/
	fi
	echo -e "\n\t¡Yazi listo!"

	echo -e "\n\tCopiando Swaync"
	if [ -d "$HOME/.config/swaync" ]; then
		echo -e "\n\tExiste el directorio swaync...\n\tCopiando archivos\n"
		cp -r $HOME/Dotfiles/config/swaync/* $HOME/.config/swaync/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		cp -r $HOME/Dotfiles/config/swaync $HOME/.config/
	fi
	echo -e "\n\t¡Swaync listo!"

	echo -e "\n\tCopiando Wlogout"
	if [ -d "$HOME/.config/wlogout" ]; then
		echo -e "\n\tExiste el directorio Wlogout...\n\tCopiando archivos\n"
		cp -r $HOME/Dotfiles/config/wlogout/* $HOME/.config/wlogout/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		cp -r $HOME/Dotfiles/config/wlogout $HOME/.config/
	fi
	echo -e "\n\t¡Wlogout listo!"

	echo -e "\n\tCopiando Matugen"
	if [ -d "$HOME/.config/matugen" ]; then
		echo -e "\n\tExiste el directorio Matugen...\n\tCopiando archivos\n"
		cp -r $HOME/Dotfiles/config/matugen/* $HOME/.config/matugen/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		cp -r $HOME/Dotfiles/config/matugen $HOME/.config/
	fi
	echo -e "\n\t¡Matugen listo!"

	echo -e "\n\t¡Copias completas!"
}

presentation
installDependencies
copyFiles
echo -e "\n\t¡TODO LISTO!"
