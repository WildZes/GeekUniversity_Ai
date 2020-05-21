# -*- coding: utf-8 -*-
"""
5) Создать (программно) текстовый файл, записать в него программно набор чисел,
   разделенных пробелами. Программа должна подсчитывать сумму чисел в файле и
   выводить ее на экран.
"""
#Некорректный импорт, но для создания файла сработал
import les_5_task_1

def sum_float_file(file_path):
    total_sum = 0
    with open(file_path) as f:
        line = f.read().split()
        for el in line:
            try:
                total_sum += float(el)
            except Exception:
                not_correct = True
#                print('Файл содержит некорректные данные...')
    if not_correct:
        print('Файл содержит некорректные данные, которые не будут учтены.')
    print(f'Cумма чисел строк предоставленного файла составила: {total_sum}')

#Проверка работы функции        
sum_float_file("any_file.txt")