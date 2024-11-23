#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Использование: $0 <исходная_директория> <целевая_директория>"
    exit 1
fi

source_dir="$1"
target_dir="$2"
current_date=$(date +"%Y-%m-%d")

if [ ! -d "$source_dir" ]; then
    echo "Ошибка: исходная директория '$source_dir' не существует."
    exit 1
fi

if [ ! -d "$target_dir" ]; then
    echo "Целевая директория '$target_dir' не существует. Создаем..."
    mkdir -p "$target_dir"
fi

echo "Начинаем копирование файлов из '$source_dir' в '$target_dir'..."
for file in "$source_dir"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        cp "$file" "$target_dir/${filename%.*}_$current_date.${filename##*.}"
        echo "Скопирован: $filename -> ${filename%.*}_$current_date.${filename##*.}"
    fi
done

echo "Резервное копирование завершено."