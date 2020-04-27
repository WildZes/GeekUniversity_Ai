# -*- coding: utf-8 -*-
"""
2) Для списка реализовать обмен значений соседних элементов, т.е. Значениями
   обмениваются элементы с индексами 0 и 1, 2 и 3 и т.д. При нечетном
   количестве элементов последний сохранить на своем месте. Для заполнения
   списка элементов необходимо использовать функцию input().

"""
list_length = int(input('Введите количество элементов, которое будет содержать\
 список: '))
user_list = list()
for i in range(list_length):
    element = input(f'Введите элемент {i} заполняемого списка: ')
    if element.isdigit():
        user_list.append(float(element))
    else:
        user_list.append(element)

if list_length > 0:
    print('Вы ввели следующие элементы: ')
    print(*user_list, sep='\n')
    for i in range(list_length):
        if i % 2 == 0 and list_length > 1 and i+1 < list_length:
            user_list[i], user_list[i+1] = user_list[i+1], user_list[i]
        
    print('Список после преобразования ', user_list)
else:
    print('Вы не хотите заполнять список. До будущих встреч!')