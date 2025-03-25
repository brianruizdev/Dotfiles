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

#### CTT WinUtil

Chris Titus Tech's Windows Utility

This utility is a compilation of Windows tasks I perform on each Windows system I use. It is meant to streamline installs, debloat with tweaks, troubleshoot with config, and fix Windows updates. I am extremely picky about any contributions to keep this project clean and efficient.

Official [Github](https://github.com/christitustech/winutil).

Winutil must be run in Admin mode because it performs system-wide tweaks. To achieve this, run PowerShell as an administrator.

Launch Command:

```sh
# Stable Branch (Recommended)
irm "https://christitus.com/win" | iex
```

```sh
# Dev Branch
irm "https://christitus.com/windev" | iex
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

#### Scoop

A command-line installer for Windows

```sh
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

### Instalando Paquetes

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

Otras herramientas útiles:

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

#### Python 3.13

```sh
winget install Python.Python.3.13
```

Con `pip` (package installer for python) podemos instalar paquetes como librerías y frameworks de `Python`como `NumPy`, `Pandas`, `PyTorch`, `Matplotlib`, `Streamlit`, `Django`, `FastAPI`, `Flask`, `FastHTML`, `ReactPy`, `Flet`, entre otros, con el comando:

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
# Steam
winget install Valve.Steam
```

```sh
# OBS Studio
winget install OBSProject.OBSStudio
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
# Proton VPN
winget install Proton.ProtonVPN
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

#### Customizing Windows

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

Para instalar otra distro como `Debian` ó `Kali Linux`, podemos ejecutar el comando para listar las distros disponibles y posteriormente instalarla:

```sh
# para listar las distros disponibles
wsl --list --online
```

```sh
# para instalar la distro que queremos, en este caso Debian
wsl --install Debian
```

Una vez instalado `Debian` es muy probable que no este completamente actualizado asi que antes de cualquier cosa, necesitamos actualizar el sistema con estos dos comandos:

```sh
sudo apt update
```

```sh
sudo apt upgrade
```

#### Homebrew

Podemos instalar `Homebrew` ejecutando el siguiente comando para copiar el repositorio.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Una vez instalado `Homebrew` podemos instalar paquetes en `WLS` con:

```sh
# Linux Terminal (WSL)
brew install <package-name>
```

#### Nala

`Nala` es un gestor de paquetes mejorado para `Debian` ya que proporciona ventajas visuales sobre `apt`, aunque para instalar `Nala` correctamente, requeriremos varias cosas de `Python` como bibliotecas de colores para crear tablas, entre otras cosas, por lo que el proceso tomará su tiempo.

Para instalar `Nala` ejecutamos el siguiente comando y comenzará el proceso de instalación:

```sh
sudo apt install nala
```

Una vez instalado `Nala` podemos instalar paquetes en `Debian` con:

```sh
sudo nala install <package-name>
```

#### Zellij en WezTerm

```sh
# Bash on Linux Terminal (WSL)
bash <(curl -L https://zellij.dev/launch)
```

```sh
# Homebrew on Linux Terminal (WSL)
brew install zellij
```

#### Neovim en Debian

```sh
sudo apt install neovim
```

```sh
# LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

#### Kali Linux

```sh
# WSL (recomendado)
wsl --install kali-linux
```

```sh
# Winget
winget install OffSec.KaliLinux
```

## GNU Linux - Arch Linux

A continuación estarán algunos paquetes y herramientas que podrían acomodarse al entorno de tu distro de `Arch Linux`.

Para la instalación es recomendable seguir la `guía oficial`, buscar un tutorial de guía ó usar el comando `archinstall` para una instalación por GUI.

Otra distro basada en `Arch Linux` recomendable es `ArchCraft`.

Para conectar por wifi usamos `iwctl` con los comandos:

```sh
# To get an interactive prompt do:
iwctl

# The interactive prompt is then displayed with a prefix of [iwd].

# First, if you do not know your wireless device name, list all Wi-Fi devices:
[iwd] device list

# If the device or its corresponding adapter is turned off, turn it on:
[iwd] device <name> set-property Powered on
[iwd] adapter <adapter> set-property Powered on

# Then, to initiate a scan for networks (note that this command will not output anything):
[iwd] station <name> scan

# You can then list all available networks:
[iwd] station <name> get-networks

# Finally, to connect to a network:
[iwd] station <name> connect SSID

# If a passphrase is required (and it is not already stored in one of the profiles that iwd automatically checks), you will be prompted to enter it. Alternatively, you can supply it as a command line argument:
iwctl --passphrase <passphrase> station <name> connect SSID
```

El gestor de paquetes por defecto en `Arch Linux` es `pacman`. Posteriormente instalaremos otro gestor como `paru` para expandir nuestros paquetes.

### Paquetes

#### Base

Paquetes para uso general de la distro:

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

> [!TIP]
> Una vez tengamos instalada una base podemos instalar los dotfiles de [ML4W](https://www.ml4w.com/) desde su [GitHub](https://github.com/mylinuxforwork/dotfiles).

#### Qtile

Paquetes para uso exclusivo de `Qtile`:

```sh
sudo pacman -S qtile qtile-extras ly feh rofi polybar
```

#### Hyprland

Paquetes para uso exclusivo de `Hyprland`:

```sh
sudo pacman -S hyprland hyprwm hyprlock hyprpanel hyprpaper wofi waybar
```

#### Virtual Machine

Paquetes gráficos para uso en maquina virtual:

```sh
pacman -S virtualbox-guest-utils mesa mesa-libgl
```

### Repositorios

Instalando repo [Paru](https://aur.archlinux.org/packages/paru):

```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

Instalando repo [Yay](https://aur.archlinux.org/packages/yay):

```sh
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

Instalando repo [BlackArch](https://blackarch.org/downloads.html):

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
# Note - it maybe be necessary to overwrite certain packages when installing blackarch tools. If
# you experience "failed to commit transaction" errors, use the --needed and --overwrite switches
# For example:

sudo pacman -Syyu --needed --overwrite='*' <wanted-package>
```

## MacOS

Soon...

- Homebrew
- Warp, Kitty, Ghostty
- zsh, oh-my-zsh, Starship
- Neovim, VS Code, Ducklet
- VirtualBox, VMware Fusion

## Recursos de interés

### Guías y Cursos

- [Library Genesis](https://libgen.is/) - Get Books.

- [Goal Kicker Books](https://books.goalkicker.com/) - Programming Notes for Professionals books.

- [RoadMap](https://roadmap.sh/) - Developer RoadMaps.

- [W3Schools](https://www.w3schools.com/) - Learn to code with the world's largest web developer site.

- [Lear X in Y Minutes](https://learnxinyminutes.com/) - Take a whirlwind tour of your next favorite language. Community-driven!

- [Retos de Programación](https://retosdeprogramacion.com/) - Ejercicios y proyectos para mejorar tu lógica de programación.

- [Full Stack Open (es)](https://fullstackopen.com/es/) - Inmersión Profunda en el Desarrollo Web Moderno.

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

- [Netboot](https://netboot.xyz/) - your favorite operating systems in one place.

- [Typecraft](https://typecraft.dev/) - be a better nerd.

- [FaztWeb](https://faztweb.com/) - Aprende a Desarrollar Proyectos Web.

- [HackTheBox](https://www.hackthebox.com/) - Your Cyber Performance Center.

- [Hack4U](https://hack4u.io/) - Aprende Ciberseguridad.

- [OverTheWire](https://overthewire.org/wargames/) - The wargames offered by the OverTheWire community can help you to learn and practice security concepts in the form of fun-filled games.

- [NetworkChuk Academy](https://academy.networkchuck.com/) - Level up your I.T. Career with Chuck's expertise and engaging courses at NetworkChuck Academy. Start Now!

- [OffSec](https://www.offsec.com/) - Elevating Cyber Workforce and Professional Development.

- [DataScience4Business](https://ds4b.teachable.com/) - Tu primera experiencia como analista de datos.

- [DataNerd](https://datanerd.tech/) - 🛠️ Top Skills for Data Nerds 🤓.

### Servicios

- [DistroSea](https://distrosea.com/) - Test drive Linux distros online!

- [Hostinger](https://www.hostinger.com/) - Your website. Sorted.

- [Github Pages](https://pages.github.com/) - Websites for you and your projects.

- [Vercel](https://vercel.com/) - Your complete platform for the web.

- [Railway](https://railway.app/) - Shipping great products is hard. Scaling infrastructure is easy.

- [Render](https://render.com/) - Your fastest path to production.

- [Fly](https://fly.io/) - A Public Cloud Built For Developers Who Ship.

- [FL0](https://www.fl0.com/) - Taking your product to the next level.

- [Cloudflare](https://www.cloudflare.com/) - Connect, protect, and build everywhere.

- [MongoDB Atlas](https://www.mongodb.com/atlas) - The multi-cloud developer data platform.

- [PlanetScale](https://planetscale.com/) - The database platform built for scale.

- [Supabase](https://supabase.com/) - Build in a weekend. Scale to millions.

- [PocketBase](https://pocketbase.io/) - Open Source backend in 1 file.

- [Firebase](https://firebase.google.com/) - Make your app the best it can be with Firebase and generative AI.

- [Resend](https://resend.com/) - Email for developers.

- [New.email](https://new.email/) - The new way to build emails.

- [Brevo](https://www.brevo.com/) - Grow with our Email Marketing Platform & CRM suite.

- [SendGrid](https://sendgrid.com/) - Get your emails to the inbox—where they belong.

- [Twilio](https://www.twilio.com/en-us) - Get RCS on Twilio Messaging—no code changes required.

- [Stripe](https://stripe.com/) - Financial infrastructure to grow your revenue.

- [React Icons](https://react-icons.github.io/react-icons/) - Include popular icons in your React projects easily with react-icons.

- [WorldVectorLogo](https://worldvectorlogo.com/) - Download vector logos of brands you love.

- [Google Colab](https://colab.research.google.com/) - Colab notebooks allow you to combine executable code and rich text in a single document.

- [SQLite OnLine IDE](https://sqliteonline.com/) - SQLite OnLine IDE.

- [Freesets](https://freesets.dev/) - Free usefull tools.

- [ExcaliDraw](https://excalidraw.com/) - Schemas drawing tool.

- [DB Diagram](https://dbdiagram.io/home) - Draw Entity-Relationship Diagrams, Painlessly 😎.

- [JSON Crack](https://jsoncrack.com/) - Visualize JSON into interactive graphs.

- [ToDiagram](https://todiagram.com/) - Convert JSON into interactive diagrams.

- [Lorem Picsum](https://picsum.photos/) - The Lorem Ipsum for photos.

- [HTMLrev](https://htmlrev.com/) - 1500+ free HTML templates.

- [Tailwind Awesome](https://www.tailwindawesome.com/) - Discover the best Tailwind templates & UI kits.

- [CSS Loaders](https://css-loaders.com/) - The Biggest Collection of Loading Animations

- [HyperUI](https://www.hyperui.dev/) - HyperUI is a collection of free Tailwind CSS components that can be used in your next project.

- [Material UI](https://mui.com/) - Move faster with intuitive React UI tools.

- [ShadCN UI](https://ui.shadcn.com/) - Build your component library.
