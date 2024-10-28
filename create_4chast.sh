#!/bin/bash

# Функция для проверки существования папки
check_dir_exists() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
        echo "Папка '$1' создана."
    else
        echo "Папка '$1' уже существует."
    fi
}

# Запрашиваем у пользователя название курса
read -p "Введите название курса: " COURSE_NAME

# Проверяем существование папки курса и создаем ее, если не существует
check_dir_exists "$COURSE_NAME"

# Запрашиваем количество студентов
read -p "Введите количество студентов: " NUMBER_OF_STUDENTS

# Запрашиваем список студентов
read -p "Введите фамилии студентов (через пробел): " STUDENTS

# Создаем папку "Студенты" и файл "Оценки.txt"
mkdir -p "$COURSE_NAME/Студенты"
touch "$COURSE_NAME/Оценки.txt"

# Добавляем оценки в файл
echo "$STUDENTS" | tr ' ' '\n' | while read student; do
    echo "$student: 5" >> "$COURSE_NAME/Оценки.txt"
done

echo "Оценки добавлены в файл '$COURSE_NAME/Оценки.txt' для курса '$COURSE_NAME'"

