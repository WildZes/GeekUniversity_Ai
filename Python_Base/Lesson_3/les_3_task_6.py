# -*- coding: utf-8 -*-
"""
6) Реализовать функцию int_func(), принимающую слово из маленьких латинских
   букв и возвращающую его же, но с прописной первой буквой. Например,
   print(int_func(‘text’)) -> Text.
   
   Продолжить работу над заданием. В программу должна попадать строка из слов,
   разделенных пробелом. Каждое слово состоит из латинских букв в нижнем
   регистре. Сделать вывод исходной строки, но каждое слово должно начинаться
   с заглавной буквы. Необходимо использовать написанную ранее функцию
   int_func().
"""
def int_func(word):
    return word.capitalize()

def int_func_string(string):
    return ' '.join(list(map(int_func, string.split())))

print(int_func_string(input('Введите любую строку: ')))
