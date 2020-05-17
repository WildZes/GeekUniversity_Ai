# -*- coding: utf-8 -*-
"""
1) Создать программно файл в текстовом формате, записать в него построчно
   данные, вводимые пользователем. Об окончании ввода данных свидетельствует
   пустая строка.
"""
#Запись в файл
with open("any_file.txt", 'w') as f:
    user_input = input(f'Введите строку для помещения в файл (Enter для \
выхода): ')
    while user_input != '':
        f.write(user_input + '\n')
        user_input = input(f'Введите строку для помещения в файл (Enter для \
выхода): ')
        
#Проверка записанного
with open("any_file.txt") as f:
    for line in f:
        print(line, end='')