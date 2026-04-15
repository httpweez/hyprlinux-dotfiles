# Meu Hyprland Rice Dotfiles 🐧

Configurações do meu rice no **Hyprland** (Wayland) no Arch Linux.

### O que tem dentro:
- `hypr/`          → Configuração principal do Hyprland
- `waybar/`        → Barra (waybar)
- `kitty/`         → Terminal
- `wofi/`          → Launcher/menu
- `swaync/`        → Notificações
- `scripts/`       → Meus scripts pessoais
- `btop/`, `cava/`, `fastfetch/` → Ferramentas visuais
- `spicetify/`     → Tema customizado do Spotify
- `gtk-3.0/`       → Tema GTK
- `starship.toml`  → Prompt do shell
- `mimeapps.list`  → Associações de arquivos

## Como instalar (usando Stow)

```bash
# Clone este repositório
git clone https://github.com/SEU_USUARIO/hyprlinux-dotfiles.git ~/.dotfiles

cd ~/.dotfiles

# Instala as configurações (cria links simbólicos)
stow */
