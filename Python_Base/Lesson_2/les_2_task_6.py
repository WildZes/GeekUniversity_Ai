# -*- coding: utf-8 -*-
"""
6) Реализовать структуру данных «Товары». Она должна представлять собой список
   кортежей. Каждый кортеж хранит информацию об отдельном товаре. В кортеже
   должно быть два элемента — номер товара и словарь с параметрами
   (характеристиками товара: название, цена, количество, единица измерения).
   Структуру нужно сформировать программно, т.е. запрашивать все данные у
   пользователя.
Пример готовой структуры: 
[
    (1, {“название”: “компьютер”, “цена”: 20000, “количество”: 5, “eд”: “шт.”}),
    (2, {“название”: “принтер”, “цена”: 6000, “количество”: 2, “eд”: “шт.”}), 
    (3, {“название”: “сканер”, “цена”: 2000, “количество”: 7, “eд”: “шт.”})
]
Необходимо собрать аналитику о товарах. Реализовать словарь, в котором каждый
ключ — характеристика товара, например название, а значение — список
значений-характеристик, например список названий товаров.
Пример:
{
    “название”: [“компьютер”, “принтер”, “сканер”],
    “цена”: [20000, 6000, 2000],
    “количество”: [5, 2, 7],
    “ед”: [“шт.”]
}
"""
product_list = list(tuple())
product_dict = {"название": None, "цена": None, "количество": None, "ед": None}
while True:
    for key in product_dict.keys():
        user_input = input(f'Введите параметр "{key}" товара\
 (нет для выхода): ')
        if user_input == "нет":
            break
        elif key == "цена":
            try:
                float(user_input)
            except ValueError:
                print('Неверный ввод, придется повторить...')
                user_input = "повтор"
                break
            product_dict[key] = float(user_input)
        elif key == "количество":
            try:
                int(user_input)
            except ValueError:
                print('Неверный ввод (количество должно отображаться\
 целочисленным значением), придется повторить...')
                user_input = "повтор"
                break
            product_dict[key] = int(user_input)
        else:
            product_dict[key] = user_input
    if user_input == "повтор":
        continue
    if user_input == "нет":
        break
    product_list.append((len(product_list)+1, product_dict.copy()))
print(product_list)

analyse = {}
for product in product_list:
    for key, value in product[1].items():
        if key in analyse and value not in analyse[key]:
            analyse[key].append(value)
        else:
            analyse[key] = [value]
print(analyse)
