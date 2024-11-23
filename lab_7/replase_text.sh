#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Использование: $0 <имя_файла> <искомое_слово> <заменяющее_слово>"
    exit 1
fi

file="$1"
search_word="$2"
replace_word="$3"

if [ ! -f "$file" ]; then
    echo "Ошибка: файл '$file' не существует."
    exit 1
fi

if [ ! -w "$file" ]; then
    echo "Ошибка: файл '$file' недоступен для записи."
    exit 1
fi

echo "Заменяем '$search_word' на '$replace_word' в файле '$file'..."
sed -i "s/$search_word/$replace_word/g" "$file"

echo "Замена завершена. Результат:"
cat "$file"