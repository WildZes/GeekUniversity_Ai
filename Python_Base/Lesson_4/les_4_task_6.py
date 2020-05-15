# -*- coding: utf-8 -*-
"""
6) Реализовать два небольших скрипта: 
    а) итератор, генерирующий целые числа, начиная с указанного, 
    б) итератор, повторяющий элементы некоторого списка, определенного заранее.
"""
from sys import argv
from itertools import count, cycle
import ast

def task_a(start, stop):
    formed_list = []
    for el in count(int(start)):
        if el > int(stop):
            break
        else:
            formed_list.append(el)
    return 'Сгенерированный список от ' + start + ' до ' + stop\
+ ': ' + str(formed_list)

def task_b(in_list, loops):
    loop_count = 0
    convert_to_list = ast.literal_eval(in_list)
    estimated_loops = int(loops) * len(convert_to_list)
    for el in cycle(convert_to_list):
        if loop_count >= estimated_loops:
            break
        else:
            print(el)
        loop_count += 1

try:
    if argv[1] == 'task_a':
        print(task_a(argv[2], argv[3]))
    elif argv[1] == 'task_b':
        task_b(argv[2], argv[3])
except Exception:
    print('Кто-то, что-то сделал не так...')

