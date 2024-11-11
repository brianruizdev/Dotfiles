# Windows 10/11 & UNIX

> [!WARNING]
> En construcción

A continuación estarán algunas de las herramientas que podrían acomodarse a tu entorno de desarrollo en `Windows`.

> [!NOTE]
> No es necesario instalar todo lo presentado a continuación.

## Fuentes

Fuentes necesarias para visualizar `ligatures` e `iconos`:

- [Cascadia Code](https://github.com/microsoft/cascadia-code/releases)
- [Hack Nerd Fonts](https://www.nerdfonts.com/font-downloads)

## Instalando paquetes

[Winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/)
: The WinGet command line tool enables developers to discover, install, upgrade, remove and configure applications on Windows computers.

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

[Chocolatey](https://chocolatey.org/)
: The Package Manager for Windows Modern Software Automation

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

[Scoop](https://scoop.sh/)
: A command-line installer for Windows

```sh
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

### Gestores de versiones y contenedores

#### Git & LazyGit

```sh
# Git
winget install --id=Git.Git  -e
```

```sh
# LazyGit
winget install --id=JesseDuffield.lazygit -e
```

#### Docker & LazyDocker

```sh
# Docker
winget install --id=Docker.DockerCompose  -e
```

```sh
# LazyDocker
winget install --id=JesseDuffield.Lazydocker  -e
```

#### Volta (Administrador de versiones de Node)

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

### Emuladores de Terminal

#### Windows Terminal

```sh
winget install --id=Microsoft.WindowsTerminal  -e
```

#### WezTerm

```sh
winget install --id=wez.wezterm  -e
```

#### Alacritty

```sh
winget install --id=Alacritty.Alacritty  -e
```

#### Hyper

```sh
winget install --id=Vercel.Hyper  -e
```

#### Wave

```sh
winget install --id=CommandLine.Wave  -e
```

### Herramientas para Terminal

#### PowerShell

```sh
winget install --id=Microsoft.PowerShell  -e
```

#### oh-my-posh (terminal prompt)

```sh
winget install --id=JanDeDobbeleer.OhMyPosh  -e
```

Instalando `Terminal-Icons` para nuestros iconos en terminal:

```sh
Install-Module -Name Terminal-Icons -Repository PSGallery
```

#### Starship (terminal prompt)

Crea conflicto con `oh-my-posh`, no debe coincidir.

```sh
winget install --id=Starship.Starship  -e
```

#### lsd

```sh
winget install --id=lsd-rs.lsd  -e
```

#### bat

```sh
winget install --id=sharkdp.bat  -e
```

#### tealdeer (tldr)

```sh
winget install --id=dbrgn.tealdeer  -e
```

#### zoxide

```sh
winget install --id=ajeetdsouza.zoxide  -e
```

#### fzf

```sh
winget install --id=junegunn.fzf  -e
```

#### fd

```sh
winget install --id=sharkdp.fd  -e
```

#### clink

```sh
winget install --id=chrisant996.Clink  -e
```

#### ripgrep MSVC

```sh
winget install --id=BurntSushi.ripgrep.MSVC  -e
```

### Lenguajes y Tecnologías

#### NodeJS

```sh
# Current version
winget install --id=OpenJS.NodeJS  -e
```

```sh
# LTS version (Recommended)
winget install --id=OpenJS.NodeJS.LTS  -e
```

##### npm (node package manager)

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

#### Python 3.13

```sh
winget install --id=Python.Python.3.13  -e
```

##### pip (package installer for python)

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

#### MongoDB

```sh
# Server
winget install --id=MongoDB.Server  -e
```

```sh
# Shell
winget install --id=MongoDB.Shell  -e
```

#### XAMPP 8.2

```sh
winget install --id=ApacheFriends.Xampp.8.2  -e 
```

#### Deno

```sh
winget install --id=DenoLand.Deno  -e
```

#### zig

```sh
winget install --id=zig.zig  -e
```

### Editores de Texto e IDEs

#### Vim & NeoVim

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

#### Helix

```sh
winget install --id=Helix.Helix  -e
```

#### Visual Studio Code

```sh
# Production
winget install --id=Microsoft.VisualStudioCode  -e
```

```sh
# Insiders
winget install --id=Microsoft.VisualStudioCode.Insiders  -e
```

#### Spyder

```sh
winget install --id=Spyder.Spyder  -e
```

#### JetBrains IDEs

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

#### Android Studio

```sh
winget install --id=Google.AndroidStudio  -e
```

### Software

#### GitHub Desktop

```sh
winget install --id=GitHub.GitHubDesktop  -e
```

#### Docker Desktop

```sh
winget install --id=Docker.DockerDesktop  -e
```

#### MongoDB Compass

```sh
winget install --id=MongoDB.Compass.Community  -e
```

#### Studio 3T

```sh
winget install --id=3TSoftwareLabs.Studio3T  -e
```

#### DBngin

[Download](https://dbngin.com/)

#### MySQL Workbench 8.0 CE

```sh
winget install --id=Oracle.MySQLWorkbench  -e
```

#### Oracle VM VirtualBox

Para [`Arch Linux`](https://archlinux.org/) y [`Kali Linux`](https://www.kali.org/).

```sh
winget install --id=Oracle.VirtualBox  -e
```

#### Google Chrome

```sh
winget install --id=Google.Chrome  -e
```

#### Mozilla Firefox

```sh
winget install --id=Mozilla.Firefox  -e
```

#### balenaEtcher

```sh
winget install --id=Balena.Etcher  -e
```

#### Transmission

```sh
winget install --id=Transmission.Transmission  -e
```

#### Notion

```sh
winget install --id=Notion.Notion  -e
```

#### TickTick

```sh
winget install --id=Appest.TickTick  -e
```

#### Steam

```sh
winget install --id=Valve.Steam  -e
```

#### Discord

```sh
winget install --id=Discord.Discord  -e
```

## WSL (Windows Subsystem for Linux)

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

### Instalando Homebrew en WSL

[Homebrew](https://brew.sh/)
: Package Manager for Linux (WSL)

Podemos instalar `Homebrew` ejecutando el siguiente comando para copiar el repositorio.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Una vez instalado `Homebrew` podemos instalar paquetes en `WLS` con:

```sh
# Linux Terminal (WSL)
brew install package-name
```

### Instalando Nala en WSL para Ubuntu

[Nala](https://www.omgubuntu.co.uk/2023/01/install-nala-on-ubuntu)
: Nala is a Neat Alternative to Apt on Ubuntu

`Nala` es un gestor de paquetes mejorado para `Ubuntu` ya que proporciona ventajas visuales sobre `apt`, aunque para instalar `Nala` correctamente, requeriremos varias cosas de `Python` como bibliotecas de colores para crear tablas, entre otras cosas por lo que el proceso tomará su tiempo.

Para instalar `Nala` ejecutamos el siguiente comando comenzará el proceso de instalación.

```sh
sudo apt install nala
```

Una vez instalado `Nala` podemos instalar paquetes en `Ubuntu` con:

```sh
sudo nala install package-name
```

### Instalando Kali Linux en WSL

Podemos instalar con `wsl` ó con `winget`:

```sh
# WSL (recomendado)
wsl.exe --install kali-linux
```

```sh
# Winget
winget install --id=OffSec.KaliLinux  -e
```

### Instalando ZelliJ en WSL para WezTerm

[Zellij](https://zellij.dev/)
: A terminal workspace with batteries included

```sh
# Linux Terminal (WSL)
bash <(curl -L https://zellij.dev/launch)
```

Instalando con `Homebrew`:

```sh
# Linux Terminal (WSL)
brew install zellij
```

#### Instalando NeoVim en WSL para Ubuntu

```sh
sudo apt install neovim
```

#### Instalando Helix en WSL para Ubuntu

```sh
sudo add-apt-repository ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix
```
