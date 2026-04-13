# Windows 10/11

A continuación estarán algunas de las herramientas que podrían acomodarse a tu entorno de desarrollo en `Windows`.

## Instalando Paquetes

> [!TIP]
> Primero debemos tener actualizado todo en la Microsoft Store.
> Es recomendable instalar paquetes como administrador!

### Package Manager

- Winget

The WinGet command line tool enables developers to discover, install, upgrade, remove and configure applications on Windows computers.

Instalamos paquetes nativos con el `AppInstaller` de windows (`winget`) que debería estar instalado por defecto.

```sh
# Install
winget install Microsoft.AppInstaller
```

```sh
# Update
winget upgrade Microsoft.AppInstaller

# List packages to update
winget upgrade

# Update all packages
winget upgrade --all
```

Podemos buscar paquetes en [`winstall`](https://winstall.app/) o usar el comando:

```sh
winget search <package-name>
```

Y podemos instalar paquetes por `nombre` o `id`, usando el comando:

```sh
# by name
winget install <package-name>

# by id (Recomended)
winget install <package-id>
```

- Chocolatey

The Package Manager for Windows Modern Software Automation

```sh
winget install Chocolatey.Chocolatey
```

### Terminal

```sh
# Windows Terminal
winget install Microsoft.WindowsTerminal
```

```sh
# WezTerm
winget install wez.wezterm
```

```sh
# Warp
winget install Warp.Warp
```

Usaremos `PowerShell` como nuestro CLI:

```sh
winget install Microsoft.PowerShell
```

Mejoramos el `prompt` con `oh-my-posh` ó `Starship`:

```sh
# OhMyPosh
winget install JanDeDobbeleer.OhMyPosh
```

```sh
# Starship
winget install Starship.Starship
```

Instalamos `Terminal-Icons` para nuestros iconos en terminal:

```sh
Install-Module -Name Terminal-Icons -Repository PSGallery
```

```sh
# Git
winget install Git.Git
```

Pushing git repository to github:

```sh
echo "# Readme File" >> README.md
git init
git add .
git status
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/<username>/<repository>.git
git remote -v
git push -u origin main
```

```sh
# Docker
winget install Docker.DockerCompose
```

```sh
# Zig lsd bat fzf fd ripgrep tealdeer cLink zoxide
winget install zig.zig lsd-rs.lsd sharkdp.bat junegunn.fzf sharkdp.fd BurntSushi.ripgrep.MSVC dbrgn.tealdeer chrisant996.Clink ajeetdsouza.zoxide

# Yazi
winget install sxyazi.yazi
# Install the optional dependencies (recommended):
winget install Gyan.FFmpeg 7zip.7zip jqlang.jq oschwartz10612.Poppler sharkdp.fd BurntSushi.ripgrep.MSVC junegunn.fzf ajeetdsouza.zoxide ImageMagick.ImageMagick
```

### Python

```sh
winget install Python.Python.3.14
```

Con `pip` (package installer for python) podemos instalar paquetes como librerías y frameworks de `Python` como `virtualenv`, `NumPy`, `Pandas`, `PyTorch`, `Matplotlib`, `Gradio`, `Django`, `FastAPI`, `Flask`, `Streamlit`, `Reflex`, `Flet`, `ReactPy`, `FastHTML`, `NiceGUI` entre otros, con el comando:

```sh
pip install <package-name>
```

También podemos usar `uv` que es una alternativa moderna de `pip`:

```sh
winget install astral-sh.uv
```

```sh
# checking uv
uv
```

```sh
# installing packages
uv pip install <package>
```

Creating a virtual environment (venv):

```sh
# Traditional method
python -m venv .venv

# Modern method
uv venv

# activating on windows
.venv\Scripts\activate

#  activating on unix
source .venv/bin/activate

# deactivating venv
deactivate
```

### NodeJS

```sh
winget install OpenJS.NodeJS.LTS
```

Con `npm` (node package manager) podemos instalar paquetes como librerías y frameworks de `NodeJS` como `Vite`, `RsPack`, `React`, `ExpressJS`, `Mongoose`, `TailwindCSS`, `NextJS`, `NestJS`, `Hono`, `Expo`, entre otros, con el comando:

```sh
npm install <package-name>
```

Alternativas a `NodeJS`:

```sh
# Deno
winget install DenoLand.Deno
```

```sh
# Bun
winget install Oven-sh.Bun
```

### MongoDB

```sh
# Server
winget install MongoDB.Server
```

```sh
# Shell
winget install MongoDB.Shell
```

```sh
# MongoDB Compass
winget install MongoDB.Compass.Community
```

```sh
# Studio 3T
winget install 3TSoftwareLabs.Studio3T
```

```sh
# DbGate
winget install JanProchazka.dbgate
```

### SQL

```sh
# XAMPP 8.2 Environment
winget install ApacheFriends.Xampp.8.2
```

- [`DBngin`](https://dbngin.com/) - Database Version Management Tool.

- MySQL:

```sh
# MySQL
winget install Oracle.MySQL
```

```sh
# MySQL Workbench 8.0 CE
winget install Oracle.MySQLWorkbench
```

```sh
# SQLectron
winget install sqlectron.sqlectron-gui
```

- PostgreSQL:

```sh
# PostgreSQL
winget install PostgreSQL.PostgreSQL.17
```

```sh
# pgAdmin
winget install PostgreSQL.pgAdmin
```

- SQLite:

```sh
# SQLite
winget install SQLite.SQLite
```

```sh
# SQLiteStudio
winget install PawelSalawa.SQLiteStudio
```

```sh
# DB Browser for SQLite
winget install DBBrowserForSQLite.DBBrowserForSQLite
```

### Editores & IDEs

```sh
# Neovim
winget install Neovim.Neovim

# Vim-Plug
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
# :PlugInstall to install the plugins

# LazyVim
git clone https://github.com/LazyVim/starter $env:LOCALAPPDATA\nvim
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```

```sh
# Visual Studio Code
winget install Microsoft.VisualStudioCode
```

```sh
# WebStorm
winget install JetBrains.WebStorm
```

```sh
# PyCharm Community
winget install JetBrains.PyCharm.Community
```

```sh
# IntelliJ IDEA Community
winget install JetBrains.IntelliJIDEA.Community
```

```sh
# DataGrip
winget install JetBrains.DataGrip
```

```sh
# DataSpell
winget install JetBrains.DataSpell
```

```sh
# Spyder
winget install Spyder.Spyder
```

```sh
# RunJS
winget install lukehaas.RunJS
```

### Microsoft Tools

```sh
# PC Manager
winget install Microsoft.PCManager
```

```sh
# PowerToys
winget install Microsoft.PowerToys
```

- Office 2024:

1. Download the [`Office Deployment Tool`](https://learn.microsoft.com/en-us/office/ltsc/2024/deploy) from the [`Microsoft Download Center`](https://www.microsoft.com/en-us/download/details.aspx?id=49117) or try with `winget`. Keep the "`Setup.exe`" file and erase another files.

   ```sh
   winget install Microsoft.OfficeDeploymentTool
   ```

2. Create and export the [`Office Customization Tool`](https://config.office.com/deploymentsettings) file as "`Office Open XML`" and name it "`Configuration`", then move the "`Configuration.xml`" file to the folder with the "`Setup.exe`" file.

3. Install Office LTSC 2024 by using the Office Deployment Tool. Open the folder containing the files in a `CMD` as Administrator and use the follow command:

    ```sh
    setup /configure configuration.xml
    ```

4. Use this command on a `PowerShell` as Administrator and select (`2`) and then (`1`):

    ```sh
    irm https://get.activated.win | iex
    ```

```sh
# Power BI
winget install Microsoft.PowerBI
```

### Softwares Útiles

```sh
# iCloud
winget install iCloud
```

```sh
# Drive
winget install Google.GoogleDrive
```

```sh
# Steam
winget install Valve.Steam
```

```sh
# Spotify
winget install Spotify.Spotify
```

```sh
# Discord
winget install Discord.Discord
```

```sh
# OBS Studio
winget install OBSProject.OBSStudio
```

```sh
# Proton VPN
winget install Proton.ProtonVPN
```

```sh
# TunnelBear
winget install TunnelBear.TunnelBear
```

```sh
# VirtualBox
winget install Oracle.VirtualBox
```

```sh
# Transmission
winget install Transmission.Transmission
```

```sh
# balenaEtcher
winget install Balena.Etcher
```

```sh
# Ngrok
winget install Ngrok.Ngrok
```

### Customizing Windows

```sh
# Files (file explorer) ⭐
winget install FilesCommunity.Files
```

```sh
# Flow Launcher (app launcher) ⭐
winget install Flow-Launcher.Flow-Launcher
```

```sh
# Everything (looking files) ⭐
winget install voidtools.Everything
```

```sh
# AltSnap (moving windows) ⭐
winget install AltSnap.AltSnap
```

```sh
# ShareX (better screenshots)
winget install ShareX.ShareX
```

```sh
# Listary (file manager tool)
winget install Bopsoft.Listary
```

```sh
# Fluent Search (app launcher)
winget install BlastApps.FluentSearch
```

```sh
# StartAllBack (taskbar config)
winget install StartIsBack.StartAllBack
```

```sh
# Start11 (taskbar config)
winget install Stardock.Start11
```

```sh
# TranslucentTB (transparent taskbar)
winget install CharlesMilette.TranslucentTB
```

```sh
# Lively Wallpaper (live wallpapers)
winget install rocksdanister.LivelyWallpaper
```

```sh
# Sucrose Wallpaper Engine (live wallpapers)
winget install Taiizor.SucroseWallpaperEngine
```

## WSL (Windows Subsystem for Linux)

En Windows el paquete de `WSL` debería estar instalado por defecto, sin embargo en ocasiones requiere habilitar la función de `virtualization` desde la `BIOS`.

También podríamos entrar en el `Control Panel` luego en la sección de `Programs`, `Programs and Features`, `Turn Windows features on or off`, se abrirá una ventana de `Windows Features`, bajamos y marcamos las opciones `Virtual Machine Platform` y `Windows Subsystem for Linux`.

Instalando `WSL`:

```sh
wsl --install
```

Configuramos la versión por defecto:

```sh
wsl --set-default-version 2
```

Opción de instalación con `winget`:

```sh
winget install Microsoft.WSL
```

`WSL` instala por defecto `Ubuntu`, si no es la distro que queremos, podemos desinstalarla de la siguiente manera:

```sh
# para listar las distros instaladas
wsl --list --verbose
```

```sh
# para desinstalar la distro que no queremos, en este caso Ubuntu
wsl --unregister Ubuntu
```

Para instalar otra distro como `Arch`, `Debian`, `Kali` ó `Parrot`, podemos ejecutar el comando para listar las distros disponibles y posteriormente instalarla:

```sh
# para listar las distros disponibles
wsl --list --online
```

```sh
# para instalar la distro que queremos
wsl --install <distro name>
```

Una vez instalada la distro es muy probable que no este completamente actualizado asi que antes de cualquier cosa, es recomendable actualizar el sistema.

### Arch

```sh
wsl --install archlinux
```

Otra opción es descargar la imagen WSL en la página y usamos el siguiente comando para instalar:

```sh
wsl --import <distro name> <install location> <WSL image>
```

Actualizamos el sistema con:

```sh
# WSL
sudo pacman -Syu
```

### Debian

```sh
wsl --install Debian
```

Actualizamos el sistema con:

```sh
# WSL, Actualizar lista de paquetes
sudo apt update

# WSL, Actualizar paquetes
sudo apt upgrade
```

#### Homebrew

Podemos instalar `Homebrew` ejecutando el siguiente comando para copiar el repositorio.

```sh
# WSL
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Una vez instalado `Homebrew` podemos instalar paquetes en `WLS` con:

```sh
# WSL
brew install <package-name>
```

#### Nala

`Nala` es un gestor de paquetes mejorado para `Debian` ya que proporciona ventajas visuales sobre `apt`, aunque para instalar `Nala` correctamente, requeriremos varias cosas de `Python` como bibliotecas de colores para crear tablas, entre otras cosas, por lo que el proceso tomará su tiempo.

Para instalar `Nala` ejecutamos el siguiente comando y comenzará el proceso de instalación:

```sh
# WSL
sudo apt install nala
```

Una vez instalado `Nala` podemos instalar paquetes en `Debian` con:

```sh
# WSL
sudo nala install <package-name>
```

#### Zellij en WezTerm

```sh
# WSL, Bash
bash <(curl -L https://zellij.dev/launch)
```

```sh
# WSL, Homebrew
brew install zellij
```

#### Neovim en Debian

```sh
# WSL
sudo apt install neovim
```

```sh
# WSL, LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

### Kali

```sh
wsl --install kali-linux
```

```sh
# Winget
winget install OffSec.KaliLinux
```

Actualizamos el sistema con:

```sh
# WSL, Actualizar lista de paquetes
sudo apt update

# WSL, Actualizar paquetes
sudo apt upgrade
```

### Parrot

Descargamos la imagen WSL en la página y usamos el siguiente comando para instalar:

```sh
wsl --import <distro name> <install location> <WSL image>
```

Actualizamos el sistema con:

```sh
# WSL, Actualizar lista de paquetes
sudo apt update

# WSL, Actualizar paquetes
sudo apt upgrade
```
