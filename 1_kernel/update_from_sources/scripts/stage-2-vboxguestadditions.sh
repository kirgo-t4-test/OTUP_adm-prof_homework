#!/bin/bash

# создаем папку для монтирования iso с дополнениями
mkdir /media/cdrom
# монтируем iso
mount -o loop /home/vagrant/VBoxGuestAdditions.iso /media/cdrom
# Запускаем установку дополнений
/media/cdrom/VBoxLinuxAdditions.run