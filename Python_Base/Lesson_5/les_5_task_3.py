# -*- coding: utf-8 -*-
"""
3) Создать текстовый файл (не программно), построчно записать фамилии
   сотрудников и величину их окладов (не менее 10 строк). Определить, кто из
   сотрудников имеет оклад менее 20 тыс., вывести фамилии этих сотрудников.
   Выполнить подсчет средней величины дохода сотрудников.
Пример файла:
Иванов 23543.12
Петров 13749.32

"""
def small_salary(file_path):
    total_salary = 0
    total_strings = 0
    with open(file_path) as f:
        for line in f:
            splitted_line = line.split()
            try:
                if float(splitted_line[1]) < 20000:
                    print(splitted_line[0])
                total_salary += float(splitted_line[1])
            except Exception:
                print('Файл содержит некорректные данные')
            total_strings += 1
    try:
        print(f'Средний доход сотрудников: {total_salary/total_strings:.2f}')
    except Exception:
        print('Что-то пошло не так...')

#Следующая строка использовалась для проверки работы функции   
#small_salary("any_file.txt")