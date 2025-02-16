# Домашняя работа 25
-------------------------------------------------

## Тема: Управление процессами 

### Домашнее задание:
1. написать свою реализацию ps ax используя анализ /proc
*  Результат ДЗ - рабочий скрипт который можно запустить   
---
### Выполнение задания:

Копируем скрипт proc.sh


#!/bin/bash

# Скрипт получения информации о процессах

2. Добавляем права файлу: 

```
chmod +x proc.sh
```
3. Запускаем скрипт:
```
bash proc.sh
```
<details>
<summary> результат выполнения команды: </summary>
```
pvm@pvmsrv:~/otusproc$ sudo bash proc.sh 
PID    | NAME                                     | STATE | USER
1      | systemd                                  | S  | root
2      | kthreadd                                 | S  | root
3      | rcu_gp                                   | I  | root
4      | rcu_par_gp                               | I  | root
5      | slub_flushwq                             | I  | root
6      | netns                                    | I  | root
8      | kworker/0:0H-events_highpri              | I  | root
10     | mm_percpu_wq                             | I  | root
11     | rcu_tasks_rude_                          | S  | root
12     | rcu_tasks_trace                          | S  | root
13     | ksoftirqd/0                              | S  | root
14     | rcu_sched                                | I  | root
15     | migration/0                              | S  | root
16     | idle_inject/0                            | S  | root
18     | cpuhp/0                                  | S  | root
19     | cpuhp/1                                  | S  | root
20     | idle_inject/1                            | S  | root
21     | migration/1                              | S  | root
22     | ksoftirqd/1                              | S  | root
24     | kworker/1:0H-events_highpri              | I  | root
25     | cpuhp/2                                  | S  | root
26     | idle_inject/2                            | S  | root
27     | migration/2                              | S  | root
28     | ksoftirqd/2                              | S  | root
30     | kworker/2:0H-events_highpri              | I  | root
31     | cpuhp/3                                  | S  | root
...
```
</details>


