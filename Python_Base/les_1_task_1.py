## -*- coding: utf-8 -*-
'''
1) Поработайте с переменными, создайте несколько, выведите на экран, запросите
   у пользователя несколько чисел и строк и сохраните в переменные, выведите на
   экран.
'''
int_digital = 4
flo_digital = 3.0
string = 'one, two, three'
str_list = ["one", "two", "three"]

print(int_digital)
print(flo_digital)
print(string)
print(str_list)

print(int_digital + flo_digital)
print(string + str_list[0])
print(string + ', ' + str(int_digital))

#Специально выбрал следующие выводы, чтобы проверить как python обрабатывает
#разные типы данных
#print(str_list[2] + flo_digital)
#TypeError: can only concatenate str (not "float") to str