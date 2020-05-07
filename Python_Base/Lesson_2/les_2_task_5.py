# -*- coding: utf-8 -*-
"""
5) Реализовать структуру «Рейтинг», представляющую собой не возрастающий набор
   натуральных чисел. У пользователя необходимо запрашивать новый элемент
   рейтинга. Если в рейтинге существуют элементы с одинаковыми значениями, то
   новый элемент с тем же значением должен разместиться после них.
   Подсказка. Например, набор натуральных чисел: 7, 5, 3, 3, 2. 
   Пользователь ввел число 3. Результат: 7, 5, 3, 3, 3, 2.
   Пользователь ввел число 8. Результат: 8, 7, 5, 3, 3, 2.
   Пользователь ввел число 1. Результат: 7, 5, 3, 3, 2, 1.
   Набор натуральных чисел можно задать непосредственно в коде, например,
   my_list = [7, 5, 3, 3, 2].

"""
imagined_list = [8, 8, 8, 5, 5, 2, 2, 2, 2]

while True:
    take_number = input('Введите любое натуральное число (баста для выхода\
): ')
    if take_number == 'баста':
        break
    elif take_number.isdigit():
        spam = int(take_number)
        if spam in imagined_list:
            a = imagined_list.index(spam)
            b = imagined_list.count(spam)
            imagined_list.insert(a+b, spam)
        else:
            if spam > max(imagined_list):
                imagined_list.insert(0, spam)
            elif spam < min(imagined_list):
                imagined_list.append(spam)
            else:
                for index, value in enumerate(imagined_list):
                    if spam < value:
                        search_value = value
                a = imagined_list.index(search_value)
                b = imagined_list.count(search_value)
                imagined_list.insert(a+b, spam)
    else:
        print('Неверный ввод, придется повторить.')
    print(imagined_list)
