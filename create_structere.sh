#!/bin/bash

# Запрашиваем у пользователя название проекта
read -p "Введите название проекта: " PROJECT_NAME

# Запрашиваем у пользователя директорию для создания структуры
read -p "Введите директорию для создания структуры: " DIRECTORY

# Создаем корневую директорию проекта
mkdir -p "$DIRECTORY/$PROJECT_NAME"

# Создаем структуру папок
mkdir -p "$DIRECTORY/$PROJECT_NAME/src/scripts/styles/images"

# Создаем файлы
touch "$DIRECTORY/$PROJECT_NAME/README.md"
touch "$DIRECTORY/$PROJECT_NAME/.gitignore"

# Выводим сообщение об успешном завершении
echo "Структура проекта '$PROJECT_NAME' создана в директории '$DIRECTORY'"

