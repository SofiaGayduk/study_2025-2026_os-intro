#!/bin/bash

add_files() {
    local count=$1
    for ((i=1; i <= $count; i++)); do
        touch "$i.tmp"
        echo "создан файл $i.tmp"
    done
}

del_files() {
    local count=$1
    for ((i=1; i <= $count; i++)); doS
        if [ -e "$i.tmp" ]; then
            rm "$i.tmp"
            echo "удален файл $i.tmp"
        fi
    done
}

if [ $# -eq 0 ]; then
    echo "нет количества файлов для создания"
    exit 1
fi

action=$1

case $action in
    create)
        add_files $2
        ;;
    delete)
        del_files $2
        ;;
    *)
    echo "введите create (создать) или delete (удалить) файлы"
    exit 1
    ;;
esac

