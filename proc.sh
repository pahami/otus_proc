#!/bin/bash

# Функция для получения информации о процессе по PID
get_process_info() {
    local pid=$1
    local name state ppid uid user 

    # Получаем имя процесса из /proc/$pid/status
    name=$(grep -Po '^Name:\s*\K.*' "/proc/${pid}/status")

    # Получаем статус процесса из /proc/$pid/status
    state=$(grep -Po '^State:\s*\K\w+' "/proc/${pid}/status")

    # Чтение информации о пользователе из /proc/[pid]/status
    uid=$(grep -m 1 "^Uid:" /proc/$pid/status | awk '{print $2}')
    user=$(getent passwd $uid | cut -d: -f1)

    # Вывод результатов на экран по вызову list_processes
    printf "%-6s | %-40s | %-5s | %s\n" "$pid" "$name" "$state" "$user"
}

# Основная функция для вывода списка процессов
list_processes() {
    for pid in /proc/[0-9]*; do
        pid=${pid#/proc/}
        get_process_info "$pid"
    done
}

#Вывод заголовка таблицы
printf "%-6s | %-40s | %-5s | %s\n" "PID" "NAME" "STATE" "USER"

# Выводим информацию о процессах
list_processes | sort -n
