#!/bin/bash

DIR_NAME="my_directory"

echo "Создаем директорию $DIR_NAME..."
mkdir -p "$DIR_NAME"

echo "Переходим в директорию $DIR_NAME..."
cd "$DIR_NAME" || exit 1

echo "Создаем файлы file1.txt, file2.txt, file3.txt..."
touch file1.txt file2.txt file3.txt

echo "Файлы в директории $(pwd):"
ls -l

echo "Удаляем файлы..."
rm -f file1.txt file2.txt file3.txt

echo "Файлы после удаления:"
ls -l

echo "Выходим из директории $DIR_NAME..."
cd ..

echo "Удаляем директорию $DIR_NAME..."
rmdir "$DIR_NAME"

echo "Готово!"