

https://github.com/user-attachments/assets/fec537dd-dd73-41ed-8897-8b6a4fbf4e95

<div align="center">

```
██╗  ██╗██╗   ██╗██████╗ ██████╗ ██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗
██║  ██║╚██╗ ██╔╝██╔══██╗██╔══██╗██║     ██║████╗  ██║██║   ██║╚██╗██╔╝
███████║ ╚████╔╝ ██████╔╝██████╔╝██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝ 
██╔══██║  ╚██╔╝  ██╔═══╝ ██╔══██╗██║     ██║██║╚██╗██║██║   ██║ ██╔██╗ 
██║  ██║   ██║   ██║     ██║  ██║███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗
╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝
                         d o t f i l e s
```

**Meu rice pessoal do Hyprland rodando no Arch Linux (Wayland)**

![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)
![Hyprland](https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=wayland&logoColor=black)
![Waybar](https://img.shields.io/badge/Waybar-FF6C6B?style=for-the-badge)
![Kitty](https://img.shields.io/badge/Kitty-F09000?style=for-the-badge)
![SDDM](https://img.shields.io/badge/SDDM-qylock-8B5CF6?style=for-the-badge)
![Cursor](https://img.shields.io/badge/Cursor-Bibata-00BCD4?style=for-the-badge)
![Spicetify](https://img.shields.io/badge/Spicetify-1DB954?style=for-the-badge&logo=spotify&logoColor=white)

</div>

---

## 📦 Componentes

| Componente | Descrição |
|------------|-----------|
| [`hypr/`](./hypr) | Configuração principal do Hyprland (keybinds, animações, regras de janela) |
| [`waybar/`](./waybar) | Barra de status customizada |
| [`kitty/`](./kitty) | Emulador de terminal com tema e fonte customizados |
| [`wofi/`](./wofi) | Launcher de aplicações / menu Wayland |
| [`swaync/`](./swaync) | Central de notificações (SwayNotificationCenter) |
| [`cava/`](./cava) | Visualizador de áudio no terminal |
| [`btop/`](./btop) | Monitor de recursos com tema personalizado |
| [`fastfetch/`](./fastfetch) | Fetch do sistema customizado |
| [`spicetify/`](./spicetify) | Tema visual do cliente Spotify |
| [`scripts/`](./scripts) | Scripts pessoais de automação |
| [`starship.toml`](./starship.toml) | Configuração do prompt Starship |
| [`mimeapps.list`](./mimeapps.list) | Associações padrão de arquivos |
| [qylock](https://github.com/Darkkal44/qylock) *(externo)* | Tema do SDDM (login screen) com script interativo |
| [Bibata Cursor](https://github.com/ful1e5/Bibata_Cursor) *(externo)* | Cursor material design compacto para Wayland/X11 |

---

## 🚀 Instalação

### Dependências

Instale os pacotes necessários via `pacman` e `yay` (AUR):

```bash
# Pacotes principais
sudo pacman -S hyprland waybar kitty wofi swaync btop fastfetch cava stow sddm

# AUR
yay -S spicetify-cli starship bibata-cursor-theme-bin
```

### Aplicando os dotfiles com Stow

Este repositório usa o [GNU Stow](https://www.gnu.org/software/stow/) para gerenciar links simbólicos.

```bash
# Clone o repositório na sua home
git clone https://github.com/httpweez/hyprlinux-dotfiles.git ~/.dotfiles

cd ~/.dotfiles

# Aplica todos os configs de uma vez (cria symlinks em ~/.config)
stow */
```

> ⚠️ **Atenção:** Certifique-se de fazer backup das suas configurações atuais antes de rodar o `stow`, para evitar conflitos.

Para aplicar módulos individualmente:

```bash
stow hypr      # apenas o Hyprland
stow waybar    # apenas o Waybar
stow kitty     # apenas o Kitty
# etc.
```

Para remover os links simbólicos:

```bash
stow -D */
```

---

## 🗂️ Estrutura do Repositório

```
~/.dotfiles/
├── btop/
├── cava/
├── fastfetch/
├── hypr/
├── kitty/
├── scripts/
├── spicetify/
├── swaync/
├── waybar/
├── waybar.bak/
├── wofi/
├── mimeapps.list
├── starship.toml
└── README.md
```

---

## 🔐 SDDM — Tema qylock

O tema de login utilizado é o [qylock](https://github.com/Darkkal44/qylock), uma coleção de temas animados para SDDM com script interativo de instalação.

```bash
# Dependências do SDDM (Qt5)
sudo pacman -S sddm qt5-graphicaleffects qt5-quickcontrols qt5-quickcontrols2 qt5-svg

# Clone o repositório do qylock
git clone https://github.com/Darkkal44/qylock.git
cd qylock

# Rode o script interativo (requer fzf para melhor experiência)
chmod +x sddm.sh
./sddm.sh
```

> O script cuida de mover os arquivos automaticamente. Basta escolher o tema na lista interativa.

---

## 🖱️ Cursor — Bibata

O cursor utilizado é o [Bibata](https://github.com/ful1e5/Bibata_Cursor) — open source, compacto e com design material. Disponível em três cores (Amber, Classic, Ice) e dois estilos (Original/Modern).

**Via AUR (recomendado):**

```bash
paru -S bibata-cursor-theme-bin
```

**Ou instalação manual:**

```bash
# Baixe o .tar.gz na página de releases e extraia
tar -xvf Bibata.tar.gz
mv Bibata-* ~/.local/share/icons/
```

**Ativando o cursor via `hyprland.conf`:**

```ini
env = XCURSOR_THEME,Bibata-Modern-Classic
env = XCURSOR_SIZE,24
```

**E via `~/.config/gtk-3.0/settings.ini`:**

```ini
[Settings]
gtk-cursor-theme-name=Bibata-Modern-Classic
gtk-cursor-theme-size=24
```

---

## 📝 Notas

- Testado no **Arch Linux** com **Hyprland** em sessão Wayland pura.
- O `waybar.bak/` é um backup da configuração anterior do Waybar — pode ser ignorado.
- O Spicetify requer instalação separada; siga o guia oficial: [spicetify.app](https://spicetify.app/docs/getting-started).
- Para o qylock funcionar também como **lockscreen** via Quickshell, veja as instruções no [repo oficial](https://github.com/Darkkal44/qylock).
- O Bibata tem variantes para **mão direita** (Right) e tamanhos de 16 a 96px — escolha conforme sua preferência.

---

<div align="center">

feito com 🖤 no arch linux

</div>
