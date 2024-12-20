#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Использование: $0 <число1> <число2>"
    exit 1
fi

num1=$1
num2=$2

if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Ошибка: оба аргумента должны быть целыми числами"
    exit 1
fi

sum=$((num1 + num2))

echo "Сумма: $sum"
