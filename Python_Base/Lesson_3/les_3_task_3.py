# -*- coding: utf-8 -*-
"""
3) Реализовать функцию my_func(), которая принимает три позиционных аргумента,
   и возвращает сумму наибольших двух аргументов.
"""

#Исправляю упущение второго урока и использую именнованные аргументы

#При помощи sort
def my_func_sort(a, b, c):
    my_list = [a, b, c]
    my_list.sort(reverse=True)
    return my_list[0] + my_list[1]

print(my_func_sort(c=3, a=1, b=2))

#При помощи remove и max
def my_func_rm(a, b, c):
    my_list = [a, b, c]
    output = max(my_list)
    my_list.remove(max(my_list))
    output += max(my_list)
    return output

print(my_func_rm(b=7, c=10, a=9))

#При помощи if
def my_func_if(a, b, c):
    if a >= b:
        output = a
    else:
        output = b
    if output <= c:
        output += c
    elif output == a and b > c:
        output += b
    elif output == b and a > c:
        output += a
    else:
        output += c
    return output

print(my_func_if(a=2, b=2, c=1))