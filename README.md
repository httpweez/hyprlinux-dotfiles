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

---

## 🚀 Instalação

### Dependências

Instale os pacotes necessários via `pacman` e `yay` (AUR):

```bash
# Pacotes principais
sudo pacman -S hyprland waybar kitty wofi swaync btop fastfetch cava stow

# AUR
yay -S spicetify-cli starship
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

## 📝 Notas

- Testado no **Arch Linux** com **Hyprland** em sessão Wayland pura.
- O `waybar.bak/` é um backup da configuração anterior do Waybar — pode ser ignorado.
- O Spicetify requer instalação separada; siga o guia oficial: [spicetify.app](https://spicetify.app/docs/getting-started).

---

<div align="center">

feito com 🖤 no arch linux

</div>
