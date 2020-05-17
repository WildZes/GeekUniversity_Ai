# -*- coding: utf-8 -*-
"""
2) Представлен список чисел. Необходимо вывести элементы исходного списка,
   значения которых больше предыдущего элемента.
"""
start = [300, 2, 12, 44, 1, 1, 4, 10, 7, 1, 78, 123, 55]
end = [new_el for index, new_el in enumerate(start) if index > 0 and\
       new_el > start[index-1]]
print(end)