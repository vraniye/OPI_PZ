#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Использование: $0 <имя_файла>"
    exit 1
fi

file="$1"
if [ ! -f "$file" ]; then
    echo "Ошибка: файл '$file' не существует."
    exit 1
fi

if [ ! -r "$file" ]; then
    echo "Ошибка: файл '$file' недоступен для чтения."
    exit 1
fi

echo "Содержимое файла '$file':"
while IFS= read -r line; do
    echo "$line"
done < "$file"