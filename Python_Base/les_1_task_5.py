# -*- coding: utf-8 -*-
"""
5) Запросите у пользователя значения выручки и издержек фирмы. Определите, с
   каким финансовым результатом работает фирма (прибыль — выручка больше
   издержек, или убыток — издержки больше выручки). Выведите соответствующее
   сообщение. Если фирма отработала с прибылью, вычислите рентабельность
   выручки (соотношение прибыли к выручке). Далее запросите численность
   сотрудников фирмы и определите прибыль фирмы в расчете на одного сотрудника.

"""
income = float(input('Введите выручку фирмы: '))
expenses = float(input('Введите расходы фирмы: '))

if income > expenses:
    print(f'Прибыльная фирма c рентабельностью \
{(income - expenses) / income * 100}%')
    employees = int(input('Введите количество сотрудников, работающих в \
фирме: '))
    print(f'В случае распределение прибыли между всеми сотрудниками, каждый \
сотрудник получит: {(income - expenses) / employees}')
elif income < expenses:
    print('Убыточная фирма')
else:
    print('Фирма безприбыльно-безубыточная')
    
