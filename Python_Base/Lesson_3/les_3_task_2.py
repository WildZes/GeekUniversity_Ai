# -*- coding: utf-8 -*-
"""
2) Реализовать функцию, принимающую несколько параметров, описывающих данные
   пользователя: имя, фамилия, год рождения, город проживания, email, телефон.
   Функция должна принимать параметры как именованные аргументы. Реализовать
   вывод данных о пользователе одной строкой.
"""
#Возвращает строку без пробела
def print_data(name, surname, birth_year, residence_city, e_mail, phone):
    return name + surname + birth_year + residence_city + e_mail + phone

#Вернет любое количество параметров одной строкой
def print_args(*args):
    output = ''
    for smth in args:
        output += smth + ' '
    return output.rstrip()

#Вывод агументов, которые не равны None
def print_default(name, surname, birth_year=None, residence_city=None,\
e_mail=None, phone=None):
    arguments = locals()
    print (' '.join(v for k, v in arguments.items() if v is not None))

n = input('Name: ')
s = input('Surname: ')
by = input('Year of birth: ')
rc = input('Current city of residence: ')
em = input('e-mail: ')
p = input('Phone: ')

#Ни одна из функций не проверяет правильность введенных данных
print(print_data(n, s, by, rc, em, p))
print(print_args(n, s, by, rc, em, p))
print_default(n, s, by)