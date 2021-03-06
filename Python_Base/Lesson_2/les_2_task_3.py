# -*- coding: utf-8 -*-
"""
3) Пользователь вводит месяц в виде целого числа от 1 до 12. Сообщить к какому
   времени года относится месяц (зима, весна, лето, осень). Напишите решения
   через list и через dict. 
"""
seasons_dict = {'зима': [1,2,12], 'весна': [3,4,5], 'лето': [6,7,8],
                'осень': [9,10,11]}
user_choice = int(input('Введите номер месяца (1-12) для определения времени\
 года: '))
if user_choice < 1 or user_choice > 12:
    print('Такого месяца не существует')
else:
    for key, value in seasons_dict.items():
        if user_choice in value:
            print(f'Выбранный Вами месяц относится к сезону с названием\
 "{key}"')
