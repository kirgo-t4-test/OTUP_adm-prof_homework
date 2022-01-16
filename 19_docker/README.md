# Запуск


> git pull https://github.com/kirgo-t4-test/OTUP_adm-prof_homework.git
> cd 19_docker
> docker-compose up -d

http://localhost


В папках nginx и php расположены докер-файлы, использованные для формирования образов

## Определите разницу между контейнером и образом

Образ - последовательный набор слоев файловой системы, в котором каждый последующий слой модифицирует предыдущий. При этом сам образ после формирования доступен только для чтения. Контейнером же по сути является верхний слой ФС над образом, доступный для чтения и записи + процессы, изолированные в собственных namespace. Т.о контейнер, в отличие от образа может быть запущен, т.к ему доступна для изменений как область памяти, выделенная его процессам, так и файловая система.

## Можно ли в контейнере собрать ядро?

Да, как и любой другой пакет, при условии, что в нем есть все необходимое окружение для компиляции.