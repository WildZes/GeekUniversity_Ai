# -*- coding: utf-8 -*-
"""
4) Создать (не программно) текстовый файл со следующим содержимым: 
One — 1
Two — 2
Three — 3
Four — 4
Необходимо написать программу, открывающую файл на чтение и считывающую
построчно данные. При этом английские числительные должны заменяться на
русские. Новый блок строк должен записываться в новый текстовый файл.

"""
def convert_rus(file_path):
    number_dict = {"One": "Один", "Two": "Два", "Three": "Три", "Four":\
                   "Четыре", "Five": "Пять", "Six": "Шесть", "Seven": "Семь",\
                   "Eight": "Восемь", "Nine": "Девять", "Zero": "Нуль"}
    with open(file_path, "r") as f:
        lines = f.readlines()
    with open(file_path, "w") as f:
        for line in lines:
            spam = line.split()
            if spam[0] in number_dict:
                spam[0] = number_dict[spam[0]]
                f.write(' '.join(spam) + '\n')
            else:
                print('Предоставленный файл содержит некорректные данные...')
                break
            
#Проверка функции
#convert_rus("any_file.txt")
#with open("any_file.txt") as f:
#    for line in f:
#        print(line)