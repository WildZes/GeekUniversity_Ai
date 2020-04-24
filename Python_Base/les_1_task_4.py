# -*- coding: utf-8 -*-
"""
4) Пользователь вводит целое положительное число. Найдите самую большую цифру в
   числе. Для решения используйте цикл while и арифметические операции.
"""
while True:
    positive = int(input('Введите любое натуральное число: '))
    if positive < 0:
        continue
    elif positive == 0:
        print('Вы ввели нуль. Закончим на этом...')
        break
    maximal = 0
    while positive > 0:
        if positive % 10 > maximal:
            maximal = positive % 10
        positive = positive // 10
    print(f'Максимальная цифра в введенном Вами числе: {maximal}')
    break
