# -*- coding: utf-8 -*-
"""
4) Представлен список чисел. Определить элементы списка, не имеющие повторений.
   Сформировать итоговый массив чисел, соответствующих требованию. Элементы
   вывести в порядке их следования в исходном списке. Для выполнения задания
   обязательно использовать генератор.
"""
start = [2, 2, 2, 7, 23, 1, 44, 44, 3, 2, 10, 7, 4, 11]
end = [unique for unique in start if start.count(unique) == 1]
print(end)
