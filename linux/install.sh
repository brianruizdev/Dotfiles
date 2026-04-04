#
# Instalador para configurar los dotfiles
#

function presentation
{
	echo -e "\n\t=== === === === === === === === === === ==="
	echo -e "\t===    DotFiles Brian 0.01 Arch Linux     ==="
	echo -e "\t=== === === === === === === === === === ===\n\n"
}

function installDependencies
{
	echo -e "\n\tInstalando Dependencias"
	sudo pacman -Syu
	sudo pacman -S hyprland hyprpaper hypridle hyprlock hyprlauncher wofi waybar swaync
	sudo pacman -S kitty yazi nemo firefox fastfetch htop
	sudo pacman -S zsh lsd bat fzf fd zoxide mdcat
	sudo pacman -S uv curl wget zip unzip tar p7zip
	sudo pacman -S ffmpeg jq poppler ripgrep resvg imagemagick
	sudo pacman -S wireplumber unclutter scrot solaar papyrus

	# Install paru
	sudo pacman -S --needed base-devel
	cd .config
	git clone https://aur.archlinux.org/paru.git
	cd paru
	makepkg -si

	# Install AUR packages
	paru -S pokemon-colorscripts-git

	# Install oh-my-zsh and plugins
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	# Autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

	# Syntax
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

	echo -e "\n\tCambiando la shell a zsh"
	chsh -s $(which zsh)

	# Install Nerd Fonts
	sudo su
	unzip fonts/Hack.zip -d ~/usr/share/fonts
	unzip fonts/CascadiaCode.zip -d ~/usr/share/fonts

	# Install Greetd (with sysc-greet) for Hyprland
	sudo pacman -S greetd
	paru -S sysc-greet-hyprland

	# now we can enable LyDM
	sudo systemcl enable greetd.service
}

function copyFiles
{
	# Copying wallpapers
	cp ../wallpapers/ $HOME/.config/wallpapers

	# Copy hyprland files
	# Check if hypr directory exist
	if [ -d "$HOME/.config/hypr" ]; then
		echo -e "\n\tExiste el directorio hypr...\n\tCopiando archivos\n"
		cp config/hypr/* $HOME/.config/hypr
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/hypr
		cp config/hypr/* $HOME/.config/hypr
	fi

	# Check if waybar directory exist
	if [ -d "$HOME/.config/waybar" ]; then
		echo -e "\n\tExiste el directorio waybar...\n\tCopiando archivos\n"
		cp config/waybar/* $HOME/.config/waybar
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/waybar
		cp config/waybar/* $HOME/.config/waybar/
	fi

	# Check if fastfetch directory exist
	if [ -d "$HOME/.config/fastfetch" ]; then
		echo -e "\n\tExiste el directorio fastfetch...\n\tCopiando archivos\n"
		cp config/fastfetch/* $HOME/.config/fastfetch/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/fastfetch
		cp config/fastfetch/* $HOME/.config/fastfetch/
	fi

	# Check if kitty directory exist
	if [ -d "$HOME/.config/kitty" ]; then
		echo -e "\n\tExiste el directorio kitty"
		if [ -f "$HOME/.config/kitty/kitty.conf" ]; then
			echo -e "\tExiste el archivo kitty.conf"
			cp $HOME/.config/kitty/kitty.conf $HOME/.config/kitty/backup_kitty.conf
			cp config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
		else
			echo -e "\n\tNo existe el archivo copiando ...\n"
			cp config/kitty/kitty.conf $HOME/.config/kitty/
		fi
	else
		echo -e "\n\tEl directorio no existe copiando...\n"
		cp config/kitty/ $HOME/.config/
	fi

	# Check if .zshrc exist
	if [ -f "$HOME/.zshrc" ]; then
		echo -e "\n\tExiste el archivo .zshrc"
		cp $HOME/.zshrc $HOME/.zshrc_backup
	else
		echo -e "\n\tNo existe el archivo, copiando ...\n"
		cp home/.zshrc $HOME/
	fi

	# Check if nvim directory exist
	if [ -d "$HOME/.config/nvim" ]; then
		# Check if init.vim exist
		echo -e "\n\tExiste el directorio nvim"
		if [ -f "$HOME/.config/nvim/init.lua" ]; then
			echo -e "\tExiste el archivo init.lua"
			cp $HOME/.config/nvim/init.lua $HOME/.config/nvim/backup.lua
			cp config/nvim/init.lua $HOME/.config/nvim/init.lua
		else
			echo -e "\n\tNo existe el archivo creando copiando ...\n"
			cp config/nvim/init.lue $HOME/.config/nvim/
		fi
	else
		echo -e "\n\tEl directorio no existe copiando ...\n"
		mkdir $HOME/.config/nvim
		cp config/nvim/init.lua $HOME/.config/
	fi

	# Check if swaync directory exist
	if [ -d "$HOME/.config/swaync" ]; then
		echo -e "\n\tExiste el directorio swaync...\n\tCopiando archivos\n"
		cp config/swaync/* $HOME/.config/swaync/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/swaync
		cp config/swaync/* $HOME/.config/swaync/
	fi

	# Check if greetd directory exist
	if [ -d "$HOME/.config/greetd" ]; then
		echo -e "\n\tExiste el directorio greetd...\n\tCopiando archivos\n"
		cp config/greetd/* $HOME/.config/greetd/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/greetd
		cp config/greetd/* $HOME/.config/greetd/
	fi

	# Check if yazi directory exist
	if [ -d "$HOME/.config/yazi" ]; then
		echo -e "\n\tExiste el directorio yazi...\n\tCopiando archivos\n"
		cp config/yazi/* $HOME/.config/yazi/
	else
		echo -e "\n\tEl directorio no existe...\n\tCreandolo...\n"
		mkdir $HOME/.config/yazi
		cp config/yazi/* $HOME/.config/yazi/
	fi
}

presentation
installDependencies
copyFiles
