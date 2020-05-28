# -*- coding: utf-8 -*-
"""
1) Реализовать класс Matrix (матрица). Обеспечить перегрузку конструктора
   класса (метод __init__()), который должен принимать данные (список списков)
   для формирования матрицы.
   
   Следующий шаг — реализовать перегрузку метода __str__() для вывода матрицы в
   привычном виде.
   
   Далее реализовать перегрузку метода __add__() для реализации операции
   сложения двух объектов класса Matrix (двух матриц). Результатом сложения
   должна быть новая матрица.
"""
from random import randint
from itertools import zip_longest

class Matrix:
    def __init__(self, matrix):
        self.matrix = matrix
        
    def __str__(self):
        return '\n'.join([''.join(['{:5}'.format(el) for el in line])\
                          for line in self.matrix])
    
    def __add__(self, other):
        output_matrix = list()
        if len(self.matrix) > len(other.matrix):
            for index, line in enumerate(self.matrix):
                if index < len(other.matrix):
                    output_matrix.append([x+y for x,y in\
                                          zip_longest(line,other.matrix[index]\
                                                      ,fillvalue=0)])
                else:
                    output_matrix.append(line)
        else:
            for index, line in enumerate(other.matrix):
                if index < len(self.matrix):
                    output_matrix.append([x+y for x,y in\
                                          zip_longest(line, self.matrix[index]\
                                                      ,fillvalue=0)])
                else:
                    output_matrix.append(line)
        return Matrix(output_matrix)
    
    
    
matrix1 = [[randint(-100,100) for _ in range(3)] for _ in range(3)]

matrix2 = [[randint(-1000, 1000) for _ in range(2)] for _ in range(2)]

m1 = Matrix(matrix1)
print(m1)
print('*' * 50)
m2 = Matrix(matrix2)
print(m2)
print('*' * 50)
print(m1+m2)