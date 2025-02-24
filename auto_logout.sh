#!/bin/sh

# Renk kodları
PURPLE='\033[1;35m'
NC='\033[0m' # No Color

# Eklenecek alias komutu
ALIAS_CMD="alias bye='gnome-session-quit --logout --no-prompt'"

echo -e "${PURPLE}=== Auto Logout Script created by Y K Y ===${NC}"

# .bashrc'ye ekleme
if ! grep -qF "$ALIAS_CMD" ~/.bashrc; then
    echo "$ALIAS_CMD" >> ~/.bashrc
    echo -e "${PURPLE}[✓] Alias 'bye' eklendi: ~/.bashrc${NC}"
else
    echo -e "${PURPLE}[!] Alias 'bye' zaten ~/.bashrc içinde mevcut.${NC}"
fi

# .vimrc'ye ekleme
if ! grep -qF "$ALIAS_CMD" ~/.vimrc; then
    echo "$ALIAS_CMD" >> ~/.vimrc
    echo -e "${PURPLE}[✓] Alias 'bye' eklendi: ~/.vimrc${NC}"
else
    echo -e "${PURPLE}[!] Alias 'bye' zaten ~/.vimrc içinde mevcut.${NC}"
fi

echo -e "${PURPLE}=== Kurulum Tamamlandı! ===${NC}"

