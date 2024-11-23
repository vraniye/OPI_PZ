#!/bin/bash

add() {
    echo "$(($1 + $2))"
}

subtract() {
    echo "$(($1 - $2))"
}

multiply() {
    echo "$(($1 * $2))"
}

divide() {
    if [ "$2" -eq 0 ]; then
        echo "Ошибка: деление на ноль невозможно."
        return 1
    else
        echo "$(( $1 / $2 ))"
    fi
}

read -p "Введите первое число: " num1
read -p "Введите второе число: " num2
echo "Выберите операцию: +, -, *, /"
read -p "Введите операцию: " operation

case "$operation" in
    +)
        result=$(add "$num1" "$num2")
        echo "Результат: $result"
        ;;
    -)
        result=$(subtract "$num1" "$num2")
        echo "Результат: $result"
        ;;
    '*')
        result=$(multiply "$num1" "$num2")
        echo "Результат: $result"
        ;;
    /)
        result=$(divide "$num1" "$num2")
        if [ $? -eq 0 ]; then
            echo "Результат: $result"
        fi
        ;;
    *)
        echo "Ошибка: недопустимая операция. Используйте +, -, *, или /."
        ;;
esac