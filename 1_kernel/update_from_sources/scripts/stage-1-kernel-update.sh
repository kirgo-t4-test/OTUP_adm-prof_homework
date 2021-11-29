#!/bin/bash

# Устанавливаем необходимые пакеты для компиляции ядра
yum groupinstall -y "Development Tools"
yum install -y wget ncurses-devel bc openssl-devel elfutils-libelf-devel
# Переходим в папку c исходниками
cd /usr/src/kernels/
# Качаем ядро linux
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.162.tar.xz
# распаковываем
tar -Jxvf linux-5.4.162.tar.xz
# удаляем файл с архивом
rm -f linux-*.tar.xz
# переходим в папку с ядром
cd linux-5.4.162/
# Компиляция и установка ядра
yes "" | make oldconfig
make bzImage
make modules 
make modules_install
make install
# Удаляем старое ядро
rm -f /boot/*3.10*
# Обновляем GRUB
grub2-mkconfig -o /boot/grub2/grub.cfg
grub2-set-default 0
echo "Grub update done."

shutdown -r now
