# -*- coding: utf-8 -*-
"""
5) Реализовать формирование списка, используя функцию range() и возможности
   генератора. В список должны войти четные числа от 100 до 1000 (включая
   границы). Необходимо получить результат вычисления произведения всех
   элементов списка.
"""
from functools import reduce

def multiplication(el1, el2):
    return el1 * el2

my_list = [my_el for my_el in range(100, 1001) if my_el % 2 == 0]
print(my_list)

print(reduce(multiplication, my_list))