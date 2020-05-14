# -*- coding: utf-8 -*-
"""
1) Реализовать скрипт, в котором должна быть предусмотрена функция расчета
   заработной платы сотрудника. В расчете необходимо использовать формулу:
   (выработка в часах*ставка в час) + премия. Для выполнения расчета для
   конкретных значений необходимо запускать скрипт с параметрами.
"""
from sys import argv

employee_id, month, hours_worked, pay_per_hour, bonus = argv[1:]
income = float(hours_worked) * float(pay_per_hour) + float(bonus)
output = employee_id + ' earning for ' + month + ' is: ' + str(income)

print(output)
