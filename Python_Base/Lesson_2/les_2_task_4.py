# -*- coding: utf-8 -*-
"""
4) Пользователь вводит строку из нескольких слов, разделённых пробелами.
   Вывести каждое слово с новой строки. Строки необходимо пронумеровать.
   Если в слово длинное, выводить только первые 10 букв в слове. 
"""
user_string = input('Введите любую строку: ')
for ind, el in enumerate(user_string.split(), 1):
    if len(el) > 10:
        print(ind, el[:10]+'...')
    else:
        print(ind, el)
