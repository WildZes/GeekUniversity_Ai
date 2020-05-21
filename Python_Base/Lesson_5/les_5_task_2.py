# -*- coding: utf-8 -*-
"""
2) Создать текстовый файл (не программно), сохранить в нем несколько строк,
   выполнить подсчет количества строк, количества слов в каждой строке.
"""
def string_word_count(file_path):
    total_string = 0
    string_words = dict()
    with open(file_path) as f:
        for line in f:
            total_string += 1
            string_words[total_string] = len(line.split())
    print(f'Общее количество строк в файле {file_path}: {total_string}')
    for key in string_words:
        print(f'Количество слов в строке {key}: {string_words[key]}')

#Следующая строка использовалась для проверки напсанной функции        
#string_word_count('any_file.txt')