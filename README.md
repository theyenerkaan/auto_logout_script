🌟 Auto Logout Script 🌟

Bu script, Ubuntu 22.04 üzerinde otomatik olarak bye alias'ını .bashrc ve .vimrc dosyalarına ekleyerek hızlı bir şekilde oturumu kapatmayı sağlar.

🚀 Kurulum

🔹 1. Scripti İndirme

Öncelikle scripti indirip çalıştırma izni vermeniz gerekir:

git clone https://github.com/theyenerkaan/auto_logout_script.git
cd auto_logout_script
chmod +x auto_logout.sh

🔹 2. Scripti Çalıştırma

Scripti aşağıdaki komutla çalıştırabilirsiniz:

./auto_logout.sh

Bu işlem tamamlandıktan sonra, terminali kapatıp açarak veya aşağıdaki komutu çalıştırarak değişiklikleri yükleyebilirsiniz:

source ~/.vimrc  # veya 
source ~/.bashrc

🎯 Kullanım

Script çalıştırıldıktan sonra, bye komutunu kullanarak hızlıca oturumu kapatabilirsiniz:

bye

📌 Notlar

🖥️ Bu script, gnome-session-quit komutunu kullanarak GNOME masaüstünde oturumu kapatır. Eğer farklı bir masaüstü ortamı kullanıyorsanız, komutu değiştirmeniz gerekebilir.

📜 .vimrc içinde alias tanımlamak normalde yaygın bir kullanım değildir, ancak kullandığımız terminal Zsh olduğundan dolayı bu scriptte eklenmiştir.

✍️ Hazırlayan: Y K Y
