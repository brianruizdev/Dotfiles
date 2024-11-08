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

## Instalando paquetes nativos

Con [winstall](https://winstall.app/) podemos encontrar los paquetes a continuación.

Instalamos paquetes nativos con el `AppInstaller` de windows (`winget`) que debería estar instalado por defecto.

```sh
winget install --id=Microsoft.AppInstaller  -e
```

Existe otro gestor de paquetes llamado `Chocolatey`, sin embargo no es muy popular.

```sh
winget install --id=Chocolatey.Chocolatey  -e
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

Herramientas para mejorar tu flujo de trabajo

```sh
volta install @microsoft/inshellisense
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

##### oh-my-posh (terminal prompt)

```sh
winget install --id=JanDeDobbeleer.OhMyPosh  -e
```

##### Starship (terminal prompt)

Crea conflicto con oh-my-posh, no debe coincidir

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

- Vite (React)
- Tailwind
- Express.js

#### Python 3.13

```sh
winget install --id=Python.Python.3.13  -e
```

##### pip (package installer for python)

#### MongoDB

```sh
winget install --id=MongoDB.Server  -e
```

##### MongoDB Shell

```sh
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

- [Arch Linux](https://archlinux.org/)
- [Kali Linux](https://www.kali.org/)

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

## Comandos CMD para UNIX users

| Command | UNIX | CMD |
| :---: | :---: | :---: |
| List | ls | dir |
| Copy | cp | copy |
| Move | mv | move |
| Delete | rm | del |
| Remove | rm -rf | rd /s /q |
| Rename | mv | ren |

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

WSL instala por defecto `Ubuntu` y es muy probable que no este completamente actualizado asi que antes de cualquier cosa, necesitamos actualizar el sistema con estos dos comandos:

```sh
sudo apt update
```

```sh
sudo apt upgrade
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
brew install package_name
```

### Instalando Nala en WSL para Ubuntu

[Nala](https://www.omgubuntu.co.uk/2023/01/install-nala-on-ubuntu)
: Nala is a Neat Alternative to Apt on Ubuntu

`Nala` es un gestor de paquetes mejorado para `Ubuntu` ya que proporciona ventajas visuales sobre `apt`, aunque para instalar `Nala` correctamente, requeriremos varias cosas de `Python` como bibliotecas de colores para crear tablas, entre otras cosas por lo que el proceso tomará su tiempo.

Para instalar `nala` ejecutamos el siguiente comando comenzará el proceso de instalación.

```sh
sudo apt install nala
```

Una vez instalado `nala` podemos instalar paquetes en `Ubuntu` con:

```sh
sudo nala install package_name
```

```sh
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Instalando Kali Linux en WSL

```sh
winget install --id=OffSec.KaliLinux  -e
```

### Instalando ZelliJ en WSL para WezTerm

[Zellij](https://zellij.dev/)
: A terminal workspace with batteries included

```sh
# Linux Terminal (WSL)
bash <(curl -L https://zellij.dev/launch)
```

Homebrew install

```sh
# Linux Terminal (WSL)
brew install zellij
```
