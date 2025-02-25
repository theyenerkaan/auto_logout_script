#!/bin/bash

# 🎨 Renk kodları
PURPLE='\033[1;35m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
RED='\033[1;31m'
NC='\033[0m' # No Color

echo -e "${PURPLE}🚀 === Auto Logout Script created by Y K Y === 🚀${NC}"

# 🔹 Alias'ı eklemek istediğiniz alias
alias_line="alias bye='gnome-session-quit --logout --no-prompt'"

# 🔹 Zsh konfigürasyon dosyasının yolu
zshrc_file="$HOME/.zshrc"

# 🔍 Alias'ın dosyada zaten var olup olmadığını kontrol et
if ! grep -qF "$alias_line" "$zshrc_file"; then
    # 📝 Alias'ı zshrc dosyasına ekle
    echo "$alias_line" >> "$zshrc_file"
    echo -e "${GREEN}[✓] Alias başarıyla eklendi!${NC}"
    new_install=true
else
    echo -e "${CYAN}[!] Alias zaten mevcut, tekrar eklemeye gerek yok.${NC}"
    new_install=false
fi

# 🔄 Zshrc'yi yeniden yükle
source "$zshrc_file"
echo -e "${GREEN}[✓] Zshrc dosyası yeniden yüklendi.${NC}"

# 🚀 Kurulum tamamlandı mesajı
if [ "$new_install" = true ]; then
    echo -e "${PURPLE}🎯 === Kurulum Tamamlandı! 'bye' komutunu kullanarak oturumu kapatabilirsin. === 🎯${NC}"
else
    echo -e "${CYAN}🚀 === Zaten kurulu, ekstra işlem yapılmadı. === 🚀${NC}"
fi

# ⏳ 3 saniye bekleyip terminali temizle
echo -e "${RED}⚡ Terminal 3 saniye içinde temizlenecek... ⚡${NC}"
sleep 3
clear
