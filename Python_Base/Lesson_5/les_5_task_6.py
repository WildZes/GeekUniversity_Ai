# -*- coding: utf-8 -*-
"""
6) Необходимо создать (не программно) текстовый файл, где каждая строка
   описывает учебный предмет и наличие лекционных, практических и лабораторных
   занятий по этому предмету и их количество. Важно, чтобы для каждого предмета
   не обязательно были все типы занятий. Сформировать словарь, содержащий
   название предмета и общее количество занятий по нему. Вывести словарь на
   экран.
Примеры строк файла: Информатика:   100(л)   50(пр)   20(лаб).
                                        Физика:   30(л)   —   10(лаб)
                                        Физкультура:   —   30(пр)   —
Пример словаря: {“Информатика”: 170, “Физика”: 40, “Физкультура”: 30}
"""
def get_num(s):
    return ''.join([c for c in s if c.isdigit()])

def create_dict(file_path):
    output_dict = dict()
    with open(file_path) as read_f:
        for line in read_f:
            for el in line.split():
                if ':' in el:
                    current_key = el
                    output_dict[el] = 0
                elif len(get_num(el)) != 0:
                    output_dict[current_key] += int(get_num(el))
    return output_dict
  
#Проверка работоспособности функций
print(create_dict('my_file.json'))
