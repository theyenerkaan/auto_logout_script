#!/bin/bash

PURPLE='\033[1;35m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
RED='\033[1;31m'
NC='\033[0m' # No Color

echo -e "${PURPLE}🚀 === Auto Logout Script created by Y K Y === 🚀${NC}"

alias_line="alias bye='gnome-session-quit --logout --no-prompt'"
zshrc_file="$HOME/.zshrc"

if grep -qF "$alias_line" "$zshrc_file"; then
    echo -e "${CYAN}[!] Alias zaten mevcut, tekrar eklemeye gerek yok.${NC}"
    new_install=false
else
    echo "$alias_line" >> "$zshrc_file"
    echo -e "${GREEN}[✓] Alias başarıyla eklendi!${NC}"
    new_install=true
fi

echo -e "${CYAN}🔄 Zshrc dosyası yeniden yükleniyor...${NC}"
source "$zshrc_file"
echo -e "${GREEN}[✓] Zshrc dosyası yüklendi.${NC}"

if [ "$new_install" = true ]; then
    echo -e "${PURPLE}🎯 === Kurulum Tamamlandı! 'bye' komutunu kullanarak oturumu kapatabilirsin. === 🎯${NC}"
else
    echo -e "${CYAN}🚀 === Zaten kurulu, ekstra işlem yapılmadı. === 🚀${NC}"
fi

echo -e "${RED}⚡ Terminal 3 saniye içinde temizlenecek... ⚡${NC}"
sleep 3
clear
