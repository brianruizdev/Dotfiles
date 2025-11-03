# Dotfiles

> [!WARNING]
> En construcción

Archivos de configuración, gestores de paquetes, software y programas para tu entorno.

- [Fuentes](#fuentes)
- [Windows 10/11](#windows-1011)
- [GNU Linux - Arch Linux](#gnu-linux---arch-linux)
- [MacOS](#macos)
- [Recursos de interés](#recursos-de-interés)

> [!NOTE]
> No es necesario instalar todo lo presentado a continuación.

## Fuentes

Fuentes necesarias para visualizar `ligatures` e `icons`:

- [Cascadia Code](https://github.com/microsoft/cascadia-code/releases)
- [Hack Nerd Font](https://www.nerdfonts.com/font-downloads)
- [Monaspace](https://monaspace.githubnext.com/)

## Windows 10/11

A continuación estarán algunas de las herramientas que podrían acomodarse a tu entorno de desarrollo en `Windows`.

### Gestores de Paquetes

> [!TIP]
> Primero debemos tener actualizado todo en la Microsoft Store.
> Es recomendable instalar paquetes como administrador!

#### Winget

The WinGet command line tool enables developers to discover, install, upgrade, remove and configure applications on Windows computers.

Instalamos paquetes nativos con el `AppInstaller` de windows (`winget`) que debería estar instalado por defecto.

```sh
# Install
winget install Microsoft.AppInstaller
```

```sh
# Update
winget upgrade Microsoft.AppInstaller
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

#### Chocolatey

The Package Manager for Windows Modern Software Automation

Instalando con `winget`:

```sh
winget install Chocolatey.Chocolatey
```

Instalando con `cmd`:

```sh
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

#### CTT WinUtil

Chris Titus Tech's Windows Utility

This utility is a compilation of Windows tasks I perform on each Windows system I use. It is meant to streamline installs, debloat with tweaks, troubleshoot with config, and fix Windows updates. I am extremely picky about any contributions to keep this project clean and efficient.

WinUtil must be run in Admin mode because it performs system-wide tweaks. To achieve this, run PowerShell as an administrator.

Launch Command:

```sh
# Stable Branch (Recommended)
irm "https://christitus.com/win" | iex
```

```sh
# Dev Branch
irm "https://christitus.com/windev" | iex
```

Official [Github](https://github.com/christitustech/winutil).

### Instalando Paquetes

#### Terminal

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

#### Git

```sh
# Git
winget install Git.Git
```

```sh
# LazyGit
winget install JesseDuffield.lazygit
```

```sh
# GitHub Desktop
winget install GitHub.GitHubDesktop
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

#### Docker

```sh
# Docker
winget install Docker.DockerCompose
```

```sh
# LazyDocker
winget install JesseDuffield.Lazydocker
```

```sh
# Docker Desktop
winget install Docker.DockerDesktop
```

#### CLI Tools

```sh
# Zig
winget install zig.zig
```

```sh
# lsd
winget install lsd-rs.lsd
```

```sh
# bat
winget install sharkdp.bat
```

```sh
# fzf
winget install junegunn.fzf
```

```sh
# fd
winget install sharkdp.fd
```

```sh
# ripgrep
winget install BurntSushi.ripgrep.MSVC
```

```sh
# tealdeer
winget install dbrgn.tealdeer
```

```sh
# cLink
winget install chrisant996.Clink
```

```sh
# zoxide
winget install ajeetdsouza.zoxide
```

#### Python

```sh
winget install Python.Python.3.14
```

Con `pip` (package installer for python) podemos instalar paquetes como librerías y frameworks de `Python` como `virtualenv`, `NumPy`, `Pandas`, `PyTorch`, `Matplotlib`, `Django`, `FastAPI`, `Flask`, `CustomTkinter`, `ttkBootstap`, `Streamlit`, `FastHTML`, `ReactPy`, `Flet`, entre otros, con el comando:

```sh
pip install <package-name>
```

Una alternativa para instalar `Python` es el entorno `Anaconda`:

```sh
# Anaconda
winget install Anaconda.Anaconda3
```

```sh
# Miniconda
winget install Anaconda.Miniconda3
```

#### NodeJS

```sh
winget install OpenJS.NodeJS.LTS
```

Administrador de versiones:

```sh
# Volta
winget install Volta.Volta
```

```sh
# NVM (NodeVersionManager) for Windows
winget install CoreyButler.NVMforWindows
```

```sh
# Fast Node Manager
winget install Schniz.fnm
```

```sh
# Node Version Switcher
winget install jasongin.nvs
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

#### MongoDB

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

#### SQL

- Entorno `XAMPP 8.2`:

```sh
# Entorno XAMPP 8.2
winget install ApacheFriends.Xampp.8.2
```

- [`DBngin`](https://dbngin.com/) - Database Version Management Tool.

- `MySQL`:

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

- `PostgreSQL`:

```sh
# PostgreSQL
winget install PostgreSQL.PostgreSQL.17
```

```sh
# pgAdmin
winget install PostgreSQL.pgAdmin
```

- `SQLite`:

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

#### Editores & IDEs

```sh
# Neovim
winget install Neovim.Neovim

# LazyVim
git clone https://github.com/LazyVim/starter $env:LOCALAPPDATA\nvim
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```

```sh
# Visual Studio Code
winget install Microsoft.VisualStudioCode
```

```sh
# Cursor
winget install Anysphere.Cursor
```

```sh
# Windsurf
winget install Codeium.Windsurf
```

```sh
# Trae
winget install ByteDance.Trae
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
# DataGrip (Databases)
winget install JetBrains.DataGrip
```

```sh
# DataSpell (Data Analysis)
winget install JetBrains.DataSpell
```

```sh
# RunJS
winget install lukehaas.RunJS
```

```sh
# Spyder
winget install Spyder.Spyder
```

#### Microsoft Tools

- Esenciales:

```sh
# PC Manager
winget install Microsoft.PCManager
```

```sh
# PowerToys
winget install Microsoft.PowerToys
```

- Instalando `Office 2024`:

1. Download the [`Office Deployment Tool`](https://learn.microsoft.com/en-us/office/ltsc/2024/deploy) from the [`Microsoft Download Center`](https://www.microsoft.com/en-us/download/details.aspx?id=49117). Keep the "`Setup.exe`" file and erase another files.

2. Create and export the [`Office Customization Tool`](https://config.office.com/deploymentsettings) file as "`Office Open XML`" and name it "`Configuration`", then move the "`Configuration.xml`" file to the folder with the "`Setup.exe`" file.

3. Install Office LTSC 2024 by using the Office Deployment Tool. Open the folder containing the files in a `CMD` as Administrator and use the follow command:

    ```sh
    setup /configure configuration.xml
    ```

4. Use this command on a `PowerShell` as Administrator and select (`2`) and then (`1`):

    ```sh
    irm https://get.activated.win | iex
    ```

También se puede instalar el `Office Development Tool` como paquete de `winget`, aunque no es una instalación personalizada:

```sh
winget install Microsoft.OfficeDeploymentTool
```

- Instalando `Power BI`:

```sh
winget install Microsoft.PowerBI
```

#### Softwares Útiles

```sh
# Ngrok
winget install Ngrok.Ngrok
```

```sh
# iCloud
winget install Apple.iCloud
```

```sh
# Steam
winget install Valve.Steam
```

```sh
# OBS Studio
winget install OBSProject.OBSStudio
```

```sh
# SteamLabs
winget install Streamlabs.StreamlabsOBS
winget install Streamlabs.Streamlabs
```

```sh
# TickTick
winget install Appest.TickTick
```

```sh
# Obsidian
winget install Obsidian.Obsidian
```

```sh
# Chrome
winget install Google.Chrome
```

```sh
# Firefox
winget install Mozilla.Firefox
```

```sh
# Zen
winget install Zen-Team.Zen-Browser
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
# Proton VPN
winget install Proton.ProtonVPN
```

```sh
# TunnelBear
winget install TunnelBear.TunnelBear
```

```sh
# GIMP 3
winget install GIMP.GIMP.3
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
# Figma
winget install Figma.Figma
```

```sh
# WebStudio
winget install Webstudio.Webstudio
```

```sh
# SpeedTest
winget install Ookla.Speedtest.Desktop
winget install Ookla.Speedtest.CLI
```

#### Customizing Windows

```sh
# Files
winget install FilesCommunity.Files
```

```sh
# ShareX (better screenshots)
winget install ShareX.ShareX
```

```sh
# AltSnap (moving windows)
winget install AltSnap.AltSnap
```

```sh
# Everything (looking files)
winget install voidtools.Everything
```

```sh
# Flow Launcher (app launcher)
winget install Flow-Launcher.Flow-Launcher
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

```sh
# Rainmeter (gadgets)
winget install Rainmeter.Rainmeter
```

```sh
# GlazeWM (window manager)
winget install glzr-io.glazewm
```

```sh
# Zebar (GlazeWM bar)
winget install glzr-io.zebar
```

```sh
# Seelen UI
winget install Seelen.SeelenUI
```

```sh
# Komorebi
winget install LGUG2Z.komorebi
```

### WSL (Windows Subsystem for Linux)

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

#### Arch

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

#### Debian

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

##### Homebrew

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

##### Nala

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

##### Zellij en WezTerm

```sh
# WSL, Bash
bash <(curl -L https://zellij.dev/launch)
```

```sh
# WSL, Homebrew
brew install zellij
```

##### Neovim en Debian

```sh
# WSL
sudo apt install neovim
```

```sh
# WSL, LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

#### Kali

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

#### Parrot

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

## GNU Linux - Arch Linux

Para la instalación es recomendable seguir la `guía oficial`, buscar un tutorial de guía ó usar el comando `archinstall` para una instalación por GUI.

Otras distros basadas en `Arch` recomendables son `Omarchy`, `ArchRiot` y `ArchCraft`.

> [!NOTE]
> Una vez creamos la configuracion base de `Arch` usamos el siguiente comando para instalar...
>
> - `Omarchy`:
>
> ```sh
> curl -fsSL https://omarchy.org/install | bash
> ```
>
> - `ArchRiot`:
>
> ```sh
> curl -fsSL https://ArchRiot.org/setup.sh | bash
> ```
>
> También podemos desacargar la ISO directamente desde sus páginas web, al igual que hariamos con `ArchCraft`.
>
> Otra opción que tenemos una vez instalada la base sería instalar los dotfiles de [`ML4W`](https://www.ml4w.com/) desde su [GitHub](https://github.com/mylinuxforwork/dotfiles).

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

## MacOS

Soon...

- Homebrew
- Warp, Kitty, Ghostty
- zsh, oh-my-zsh, Starship
- Neovim, VS Code, Ducklet, Nova
- VirtualBox, VMware Fusion

## Recursos de interés

- [Library Genesis](https://libgen.is/) - Get Books.

- [Goal Kicker Books](https://books.goalkicker.com/) - Programming Notes for Professionals books.

- [RoadMap](https://roadmap.sh/) - Developer RoadMaps.

- [DevDocs](https://devdocs.io/) - DevDocs combines multiple API documentations in a fast, organized, and searchable interface.

- [W3Schools](https://www.w3schools.com/) - Learn to code with the world's largest web developer site.

- [Lear X in Y Minutes](https://learnxinyminutes.com/) - Take a whirlwind tour of your next favorite language. Community-driven!

- [Retos de Programación](https://retosdeprogramacion.com/) - Ejercicios y proyectos para mejorar tu lógica de programación.

- [Full Stack Open](https://fullstackopen.com/es/) - Inmersión Profunda en el Desarrollo Web Moderno.

- [SQLBolt](https://sqlbolt.com/) - Learn SQL with simple, interactive exercises.

- [VIM Adventures](https://vim-adventures.com/) - Learning VIM while playing a game.

- [CodeDex](https://www.codedex.io/) - Start your coding adventure while gaming.

- [Exercism](https://exercism.org/) - Develop fluency in 74 programming languages with our unique blend of learning, practice and mentoring.

- [CognitiveClass](https://cognitiveclass.ai/) - Get ahead in the tech industry and advance your career.

- [Python de la A a la Z](https://www.udemy.com/course/former-python-mega-course-build-10-real-world-applications/) - Mega curso de Python en Udemy gratuito. Usa el código `mega_course` para ingresar.

- [FreeCodeCamp](https://www.freecodecamp.org/) - Learn to code — for free. Build projects. Earn certifications.

- [Open Bootcamp](https://open-bootcamp.com/) - Contenido gratuito que se adapta a ti.

- [MongoDB Certified](https://certificationprogramspain.splashthat.com/) - Programa de Certificación MongoDB España.

- [Studio 3T Academy](https://studio3t.com/academy/) - The fastest way to learn MongoDB.

- [Hacking Vault](https://www.hackingvault.com/) - Aprende Ciberseguridad.

- [OverTheWire](https://overthewire.org/wargames/) - The wargames offered by the OverTheWire community can help you to learn and practice security concepts in the form of fun-filled games.

- [DataNerd](https://datanerd.tech/) - 🛠️ Top Skills for Data Nerds 🤓.

- [Guía Entrevistas](https://github.com/DevCaress/guia-entrevistas-de-programacion) - Guía para entrevistas técnicas como Ingeniero de software.

- [LenguajeHTML](https://lenguajehtml.com/) - Guía lenguajes Front.

- [KodeKlouds Labs](https://kodekloud.com/free-labs) - Free Labs.

- [ShipFree](https://shipfree.idee8.agency/) - Ship your startup in days, not weeks.

- [DeskMate](https://desksmate.com/) - Programming Languages cheat sheet Mat Store.

- [DistroSea](https://distrosea.com/) - Test drive Linux distros online!

- [Github Pages](https://pages.github.com/) - Websites for you and your projects.

- [Vercel](https://vercel.com/) - Your complete platform for the web.

- [Railway](https://railway.app/) - Shipping great products is hard. Scaling infrastructure is easy.

- [Render](https://render.com/) - Your fastest path to production.

- [Supabase](https://supabase.com/) - Build in a weekend. Scale to millions.

- [PyGUIBuilder](https://pyuibuilder.com/) - Build Python UI.

- [WeWeb](https://www.weweb.io/) - Build production-grade web applications 10x faster.

- [WebFlow](https://webflow.com/) - Your site should do more than look good.

- [FlutterFlow](https://www.flutterflow.io/) - Build Better. Launch Faster.

- [React Icons](https://react-icons.github.io/react-icons/) - Include popular icons in your React projects easily with react-icons.

- [WorldVectorLogo](https://worldvectorlogo.com/) - Download vector logos of brands you love.

- [SQLite OnLine IDE](https://sqliteonline.com/) - SQLite OnLine IDE.

- [Freesets](https://freesets.dev/) - Free usefull tools.

- [SQL Playground](https://sqlplayground.app/) - Create easily online SQL sandbox with SQL Playground.

- [Run SQL](https://runsql.com/) - Test your SQL queries easily 😎.

- [DB Diagram](https://dbdiagram.io/) - Draw Entity-Relationship Diagrams, Painlessly 😎.

- [CharDB](https://chartdb.io/) - Visualize your DB via one-single query.

- [JSON Crack](https://jsoncrack.com/) - Visualize JSON into interactive graphs.

- [ToDiagram](https://todiagram.com/) - Convert JSON into interactive diagrams.

- [WinBoat](https://www.winboat.app/) - Run Windows apps on 🐧 Linux with ✨ seamless integration.
