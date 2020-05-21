# -*- coding: utf-8 -*-
"""
7) Создать вручную и заполнить несколькими строками текстовый файл, в котором
   каждая строка должна содержать данные о фирме: название, форма
   собственности, выручка, издержки. 
Пример строки файла: firm_1   ООО   10000   5000.
Необходимо построчно прочитать файл, вычислить прибыль каждой компании, а также
среднюю прибыль. Если фирма получила убытки, в расчет средней прибыли ее не
включать.
Далее реализовать список. Он должен содержать словарь с фирмами и их прибылями,
а также словарь со средней прибылью. Если фирма получила убытки, также добавить
ее в словарь (со значением убытков). 
"""
import json

def calculate_business(file_path):
    spam_dict = dict()
    output_list = list()
    with open(file_path) as f:
        for line in f:
            spam = line.split()
            spam_dict[spam[0]] = float(spam[2]) - float(spam[3])
    output_list.append(spam_dict)
    average_profit = 0
    for key in spam_dict:
        if spam_dict[key] > 0:
            average_profit += spam_dict[key]
    total_firm = len(spam_dict)
    spam_dict = dict()
    spam_dict['average_profit'] = average_profit / total_firm
    output_list.append(spam_dict)
    return output_list

with open("my_file.json", "w") as write_f:
    json.dump(calculate_business("any_file.txt"), write_f)
                
