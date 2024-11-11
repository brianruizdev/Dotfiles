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

### Instalando paquetes

#### [Winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/)

The WinGet command line tool enables developers to discover, install, upgrade, remove and configure applications on Windows computers.

Con [winstall](https://winstall.app/) podemos encontrar los paquetes a continuación.

Instalamos paquetes nativos con el `AppInstaller` de windows (`winget`) que debería estar instalado por defecto.

```sh
# Install
winget install --id=Microsoft.AppInstaller  -e
```

```sh
# Update
winget upgrade --id=Microsoft.AppInstaller  -e
```

Existe otros gestores de paquetes llamados:

#### [Chocolatey](https://chocolatey.org/)

The Package Manager for Windows Modern Software Automation

Instalando con `winget`:

```sh
winget install --id=Chocolatey.Chocolatey  -e
```

Instalando con `cmd`:

```sh
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

#### [Scoop](https://scoop.sh/)

A command-line installer for Windows

```sh
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

#### Gestores de versiones y contenedores

##### Git & LazyGit

```sh
# Git
winget install --id=Git.Git  -e
```

```sh
# LazyGit
winget install --id=JesseDuffield.lazygit -e
```

##### Docker & LazyDocker

```sh
# Docker
winget install --id=Docker.DockerCompose  -e
```

```sh
# LazyDocker
winget install --id=JesseDuffield.Lazydocker  -e
```

##### Volta (Administrador de versiones de Node)

```sh
winget install --id=Volta.Volta  -e
```

Herramientas para mejorar tu flujo de trabajo con `Volta`:

```sh
volta install @microsoft/inshellisense
```

```sh
volta install typescript @ansible/ansible-language-server @astrojs/language-server bash-language-server vscode-langservers-extracted dockerfile-language-server-nodejs
```

```sh
volta install dot-language-server elm elm-test elm-format @elm-tooling/elm-language-server graphql-language-service-cli lean-language-server sql-language-server
```

```sh
volta install markdoc-ls @prisma/language-server pyright svelte-language-server typescript-svelte-plugin @tailwindcss/language-server typescript-language-server
```

```sh
volta install prettier @vue/language-server yaml-language-server@next
```

```sh
volta install intelephense
```

#### Emuladores de Terminal

##### Windows Terminal

```sh
winget install --id=Microsoft.WindowsTerminal  -e
```

##### WezTerm

```sh
winget install --id=wez.wezterm  -e
```

##### Alacritty

```sh
winget install --id=Alacritty.Alacritty  -e
```

##### Hyper

```sh
winget install --id=Vercel.Hyper  -e
```

##### Wave

```sh
winget install --id=CommandLine.Wave  -e
```

#### Herramientas para Terminal

##### PowerShell

```sh
winget install --id=Microsoft.PowerShell  -e
```

##### oh-my-posh (terminal prompt)

```sh
winget install --id=JanDeDobbeleer.OhMyPosh  -e
```

Instalando `Terminal-Icons` para nuestros iconos en terminal:

```sh
Install-Module -Name Terminal-Icons -Repository PSGallery
```

##### Starship (terminal prompt)

Crea conflicto con `oh-my-posh`, no debe coincidir.

```sh
winget install --id=Starship.Starship  -e
```

##### lsd

```sh
winget install --id=lsd-rs.lsd  -e
```

##### bat

```sh
winget install --id=sharkdp.bat  -e
```

##### tealdeer (tldr)

```sh
winget install --id=dbrgn.tealdeer  -e
```

##### zoxide

```sh
winget install --id=ajeetdsouza.zoxide  -e
```

##### fzf

```sh
winget install --id=junegunn.fzf  -e
```

##### fd

```sh
winget install --id=sharkdp.fd  -e
```

##### clink

```sh
winget install --id=chrisant996.Clink  -e
```

##### ripgrep MSVC

```sh
winget install --id=BurntSushi.ripgrep.MSVC  -e
```

#### Lenguajes y Tecnologías

##### NodeJS

```sh
# Current version
winget install --id=OpenJS.NodeJS  -e
```

```sh
# LTS version (Recommended)
winget install --id=OpenJS.NodeJS.LTS  -e
```

###### npm (node package manager)

```sh
# Vite
npm install vite@latest

# Vite templates
npm create vite@latest project-name -- --template react
```

`Vite` supported templates: `vanilla`, `vanilla-ts`, `vue`, `vue-ts`, `react`, `react-ts`, `react-swc`, `react-swc-ts`, `preact`, `preact-ts`, `lit`, `lit-ts`, `svelte`, `svelte-ts`, `solid`, `solid-ts`, `qwik`, `qwik-ts`.

```sh
# React in existing project
npm install react react-dom
```

```sh
# Tailwind CSS
npm install -D tailwindcss
npx tailwindcss init
```

```sh
# Bootstrap
npm install bootstrap
```

```sh
# ExpressJS
npm install express
```

```sh
# Mongoose
npm install mongoose
```

```sh
# NextJS automatic installation
npx create-next-app@latest

# NextJS manual installation
npm install next@latest react@latest react-dom@latest
```

```sh
# NestJS
npm i -g @nestjs/cli
nest new project-name
```

```sh
# VueJS
npm create vue@latest

# NuxtJS
npx nuxi@latest init project-name
```

```sh
# Expo for ReactNative Apps
npx create-expo-app
```

##### Python 3.13

```sh
winget install --id=Python.Python.3.13  -e
```

###### pip (package installer for python)

```sh
# Django
pip install Django
```

```sh
# FastAPI
pip install "fastapi[standard]"
```

```sh
# Flask
pip install Flask
```

```sh
# ReactPy
pip install "reactpy[starlette]"
python -c "import reactpy; reactpy.run(reactpy.sample.SampleApp)"
```

```sh
# Flet
pip install flet
```

```sh
# FastHTML
pip install python-fasthtml
```

##### MongoDB

```sh
# Server
winget install --id=MongoDB.Server  -e
```

```sh
# Shell
winget install --id=MongoDB.Shell  -e
```

##### XAMPP 8.2

```sh
winget install --id=ApacheFriends.Xampp.8.2  -e 
```

##### Deno

```sh
winget install --id=DenoLand.Deno  -e
```

##### zig

```sh
winget install --id=zig.zig  -e
```

#### Editores de Texto e IDEs

##### Vim & NeoVim

```sh
# Vim
winget install --id=vim.vim  -e
```

```sh
# NeoVim
winget install --id=Neovim.Neovim  -e
```

Entornos de `NeoVim`:

- [LazyVim](https://www.lazyvim.org/) (Recomendado)
- [NvChad](https://nvchad.com/)
- [AstroVim](https://astronvim.com/)
- [LunarVim](https://www.lunarvim.org/)

##### Helix

```sh
winget install --id=Helix.Helix  -e
```

##### Visual Studio Code

```sh
# Production
winget install --id=Microsoft.VisualStudioCode  -e
```

```sh
# Insiders
winget install --id=Microsoft.VisualStudioCode.Insiders  -e
```

##### Spyder

```sh
winget install --id=Spyder.Spyder  -e
```

##### JetBrains IDEs

```sh
# WebStorm
winget install --id=JetBrains.WebStorm  -e
```

```sh
# PyCharm Community
winget install --id=JetBrains.PyCharm.Community  -e
```

```sh
# IntelliJ IDEA Community
winget install --id=JetBrains.IntelliJIDEA.Community  -e
```

##### Android Studio

```sh
winget install --id=Google.AndroidStudio  -e
```

#### Software

##### GitHub Desktop

```sh
winget install --id=GitHub.GitHubDesktop  -e
```

##### Docker Desktop

```sh
winget install --id=Docker.DockerDesktop  -e
```

##### MongoDB Compass

```sh
winget install --id=MongoDB.Compass.Community  -e
```

##### Studio 3T

```sh
winget install --id=3TSoftwareLabs.Studio3T  -e
```

##### DBngin

[Download](https://dbngin.com/)

##### MySQL Workbench 8.0 CE

```sh
winget install --id=Oracle.MySQLWorkbench  -e
```

##### Oracle VM VirtualBox

Para [`Arch Linux`](https://archlinux.org/) y [`Kali Linux`](https://www.kali.org/).

```sh
winget install --id=Oracle.VirtualBox  -e
```

##### Google Chrome

```sh
winget install --id=Google.Chrome  -e
```

##### Mozilla Firefox

```sh
winget install --id=Mozilla.Firefox  -e
```

##### balenaEtcher

```sh
winget install --id=Balena.Etcher  -e
```

##### Transmission

```sh
winget install --id=Transmission.Transmission  -e
```

##### Notion

```sh
winget install --id=Notion.Notion  -e
```

##### TickTick

```sh
winget install --id=Appest.TickTick  -e
```

##### Steam

```sh
winget install --id=Valve.Steam  -e
```

##### Discord

```sh
winget install --id=Discord.Discord  -e
```

### WSL (Windows Subsystem for Linux)

En windows el `WSL` debería estar instalado por defecto, sin embargo en ocasiones requiere habilitar la función de `virtualization` desde la `BIOS`.

```sh
wsl --install
```

Configuramos la versión por defecto:

```sh
wsl --set-default-version 2
```

Opción de instalación con `winget`:

```sh
winget install --id=Microsoft.WSL  -e
```

`WSL` instala por defecto `Ubuntu` y es muy probable que no este completamente actualizado asi que antes de cualquier cosa, necesitamos actualizar el sistema con estos dos comandos:

```sh
sudo apt update
```

```sh
sudo apt upgrade
```

En caso de que no instale `Ubunto` por defecto o queramos instalar otra distro como `Debian` ó `Kali Linux`, podemos ejecutar el comando para listar las distros disponibles y posteriormente instalarla:

```sh
# para listar
wsl.exe --list --online
```

```sh
# para instalar
wsl.exe --install <Distro>
```

Tambien podemos ver las distros instaladas ejecutando el comando:

```sh
wsl -l -v
```

#### Instalando Homebrew en WSL

##### [Homebrew](https://brew.sh/)

Package Manager for Linux (WSL)

Podemos instalar `Homebrew` ejecutando el siguiente comando para copiar el repositorio.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Una vez instalado `Homebrew` podemos instalar paquetes en `WLS` con:

```sh
# Linux Terminal (WSL)
brew install package-name
```

#### Instalando Nala en WSL para Ubuntu

##### [Nala](https://www.omgubuntu.co.uk/2023/01/install-nala-on-ubuntu)

Nala is a Neat Alternative to Apt on Ubuntu

`Nala` es un gestor de paquetes mejorado para `Ubuntu` ya que proporciona ventajas visuales sobre `apt`, aunque para instalar `Nala` correctamente, requeriremos varias cosas de `Python` como bibliotecas de colores para crear tablas, entre otras cosas por lo que el proceso tomará su tiempo.

Para instalar `Nala` ejecutamos el siguiente comando comenzará el proceso de instalación.

```sh
sudo apt install nala
```

Una vez instalado `Nala` podemos instalar paquetes en `Ubuntu` con:

```sh
sudo nala install package-name
```

#### Instalando Kali Linux en WSL

Podemos instalar con `wsl` ó con `winget`:

```sh
# WSL (recomendado)
wsl.exe --install kali-linux
```

```sh
# Winget
winget install --id=OffSec.KaliLinux  -e
```

#### Instalando ZelliJ en WSL para WezTerm

##### [Zellij](https://zellij.dev/)

A terminal workspace with batteries included

```sh
# Linux Terminal (WSL)
bash <(curl -L https://zellij.dev/launch)
```

Instalando con `Homebrew`:

```sh
# Linux Terminal (WSL)
brew install zellij
```

##### Instalando NeoVim en WSL para Ubuntu

```sh
sudo apt install neovim
```

##### Instalando Helix en WSL para Ubuntu

```sh
sudo add-apt-repository ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix
```

## GNU Linux - Arch Linux

A continuación estarán algunos paquetes y herramientas que podrían acomodarse al entorno de tu distro de [`Arch Linux`](https://archlinux.org/).

Para la instalación es recomendable seguir la [`guía oficial`](https://wiki.archlinux.org/title/Installation_guide), buscar un tutorial de guía ó usar el comando `archinstall` para una instalación por GUI.

Otra distro basada en `Arch Linux` recomendable es [`ArchCraft`](https://archcraft.io/).

### General

Para conectar por wifi usamos `iwctl` con los comandos:

```sh
# To get an interactive prompt do:
iwctl

# The interactive prompt is then displayed with a prefix of [iwd].

# First, if you do not know your wireless device name, list all Wi-Fi devices:
[iwd] device list

# If the device or its corresponding adapter is turned off, turn it on:
[iwd] device name set-property Powered on
[iwd] adapter adapter set-property Powered on

# Then, to initiate a scan for networks (note that this command will not output anything):
[iwd] station name scan

# You can then list all available networks:
[iwd] station name get-networks

# Finally, to connect to a network:
[iwd] station name connect SSID

# If a passphrase is required (and it is not already stored in one of the profiles that iwd automatically checks), you will be prompted to enter it. Alternatively, you can supply it as a command line argument:
iwctl --passphrase passphrase station name connect SSID
```

El gestor de paquetes por defecto en `Arch Linux` es `pacman`. Posteriormente instalaremos otro gestor como `paru` para expandir nuestros paquetes.

#### Base

Paquetes para uso general de la distro:

```sh
sudo pacman -S network-manager-@@@@@@@@_y_otras_cosas
sudo pacman -S udiskie nm-applet blueman-applet cbatticon
sudo pacman -S pipewire wireplumber volumeicon
sudo pacman -S kitty git vim nano neovim helix
sudo pacman -S zsh oh-my-zsh lsd bat fzf fd zoxide
sudo pacman -S htop neofetch fastfetch
sudo pacman -S ranger nemo dunst picom
sudo pacman -S zip unzip tar 7z curl wget
sudo pacman -S unclutter scrot solaar papyrus
sudo paru -S lazygit
```

Entornos de `NeoVim`:

- [LazyVim](https://www.lazyvim.org/) (Recomendado)
- [NvChad](https://nvchad.com/)
- [AstroVim](https://astronvim.com/)
- [LunarVim](https://www.lunarvim.org/)

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
sudo pacman -S ...
```

### Repositorios

#### [Paru](https://aur.archlinux.org/packages/paru)

```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

#### [Yay](https://aur.archlinux.org/packages/yay)

```sh
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

#### [BlackArch](https://blackarch.org/downloads.html)

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

- Warp
- Kitty
- Ghostty
- WezTerm

- zsh
- oh-my-zsh
- Starship

- Vim
- NeoVim
- VS Code

- VirtualBox
- VMware Fusion

## Recursos de interés

### [El Arte del Terminal](https://github.com/jlevy/the-art-of-command-line/blob/master/README-es.md)

Aprende a usar la terminal.

### [Not-Paid](https://github.com/kleampa/not-paid)

Client did not pay? Add opacity...

### [Gentleman Programming Book](https://the-amazing-gentleman-programming-book.vercel.app/)

 "A clean programmer is the best kind of programmer"  - by Alan Buscaglia.

### [Goal Kicker Books](https://books.goalkicker.com/)

Programming Notes for Professionals books.

### [eBooks Foundation](https://github.com/EbookFoundation/free-programming-books)

List of Free Learning Resources In Many Languages

### [QX Research Python](https://github.com/qxresearch/qxresearch-event-1)

GitHub repository featuring 50+ Python applications with only 10 lines of code!

### [DevDocs](https://devdocs.io/)

DevDocs combines multiple API documentations...

### [Project Based Learning](https://github.com/practical-tutorials/project-based-learning)

A list of programming tutorials in which aspiring software developers learn how to build an application from scratch.

### [Netlify Drop](https://app.netlify.com/drop)

Drag & drop. It’s online.

### [ExcaliDraw](https://excalidraw.com/)

Schemas drawing tool.

### [DistroSea](https://distrosea.com/)

Test drive Linux distros online!

### [NetBoot](https://netboot.xyz/)

Your favorite operating systems in one place.

### [Kitty Doc](https://sw.kovidgoyal.net/kitty/overview/#)

Kitty is designed for power keyboard users.

### [Vim Doc](https://vim.rtorr.com/)

Vim Cheat Sheet.

### [Vimium Doc](https://vimium.github.io/)

The Hacker's Browser.

### [DeepHacking](https://deephacking.tech/)

Hacking paper.

### [OverTheWire](https://overthewire.org/wargames/)

The wargames offered by the OverTheWire community can help you to learn and practice security concepts in the form of fun-filled games.

### [CodeDex](https://www.codedex.io/)

Start your coding adventure while gaming.

### [RoadMap](https://roadmap.sh/)

Developer RoadMaps.

### [Exercism](https://exercism.org/)

Develop fluency in 74 programming languages with our unique blend of learning, practice and mentoring.

### [Lear X in Y Minutes](https://learnxinyminutes.com/)

Take a whirlwind tour of your next favorite language. Community-driven!

### [W3Schools](https://www.w3schools.com/)

Learn to code with the world's largest web developer site.

### [SQLbolt](https://sqlbolt.com/)

asd

### [HyperUI](https://www.hyperui.dev/)

HyperUI is a collection of free Tailwind CSS components that can be used in your next project.

### [CSS Loaders](https://css-loaders.com/)

The Biggest Collection of Loading Animations

### [Mejores prácticas de NodeJS](https://github.com/goldbergyoni/nodebestpractices/blob/spanish-translation/README.spanish.md)

Aquí encontrarás docenas de los mejores artículos sobre Node.JS.

### [Full Stack Open (ES)](https://fullstackopen.com/es/)

Inmersión Profunda en el Desarrollo Web Moderno.

### [MDN Web Docs](https://developer.mozilla.org/en-US/)

Resources for Developers, by Developers.

### [OffSec](https://www.offsec.com/)

Elevating Cyber Workforce and Professional Development.

### [Material UI](https://mui.com/)

Move faster with intuitive React UI tools.

### [DB Diagram](https://dbdiagram.io/home)

Draw Entity-Relationship Diagrams, Painlessly 😎.

### [CognitiveClass](https://cognitiveclass.ai/)

Get ahead in the tech industry and advance your career.

### [Replit Python Course](https://replit.com/learn/100-days-of-python?utm_medium=referral&utm_campaign=100_days_of_code_python)

100 Days of Code - The Complete Python Course.

### [FreeCodeCamp](https://www.freecodecamp.org/)

Learn to code — for free. Build projects. Earn certifications.

### [Oracle Next Education](https://www.oracle.com/ar/education/oracle-next-education/)

Learn to code — for free. Build projects. Earn certifications.

### [Open Bootcamp](https://open-bootcamp.com/)

Contenido gratuito que se adapta a ti.

### [MongoDB Certified](https://certificationprogramspain.splashthat.com/)

...

### [Studio 3T Academy](https://studio3t.com/academy/)

...

### [Google Actívate](https://skillshop.exceedlms.com/student/catalog/list?category_ids=7880&locale=es)

Desarrolla tu carrera profesional o expande tu empresa mediante cursos diseñados para fortalecer tu confianza y ayudarte a crecer.

### [Microsoft Learn](https://learn.microsoft.com/en-us/training/)

...

### [FaztWeb](https://faztweb.com/)

Aprende a Desarrollar Proyectos Web.

### [HackTheBox](https://www.hackthebox.com/)

Your Cyber Performance Center.

### [Hack4U](https://hack4u.io/)

Aprende Ciberseguridad.

### [NetworkChuk Academy](https://academy.networkchuck.com/)

Level up your I.T. Career with Chuck's expertise and engaging courses at NetworkChuck Academy. Start Now!

### [Python de la A a la Z](https://www.udemy.com/course/former-python-mega-course-build-10-real-world-applications/)

Mega curso de Python en Udemy gratuito. Usa el código `mega_course` para ingresar.
