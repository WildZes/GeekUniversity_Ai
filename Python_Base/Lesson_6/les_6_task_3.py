# -*- coding: utf-8 -*-
"""
3) Реализовать базовый класс Worker (работник), в котором определить атрибуты:
   name, surname, position (должность), income (доход). Последний атрибут
   должен быть защищенным и ссылаться на словарь, содержащий элементы: оклад и
   премия, например, {"wage": wage, "bonus": bonus}. Создать класс Position
   (должность) на базе класса Worker. В классе Position реализовать методы
   получения полного имени сотрудника (get_full_name) и дохода с учетом премии
   (get_total_income). Проверить работу примера на реальных данных (создать
   экземпляры класса Position, передать данные, проверить значения атрибутов,
   вызвать методы экземпляров).
"""
class Worker:
    def __init__(self, name, surname, position, wage, bonus):
        self.name = name
        self.surname = surname
        self.position = position
        self.__income = {"wage": wage, "bonus": bonus}
        
class Position(Worker):
    
    def get_full_name(self):
        return "Имя: " + self.name + "\nФамилия: " + self.surname
    
    def get_total_income(self):
        return self._Worker__income["wage"] + self._Worker__income["bonus"]
    
w1 = Worker("Ivan", "Ivanov", "CEO", 200000, 50000)
w2 = Position("Petr", "Petrov", "HR", 120000, 20000)
w3 = Position(w1.name, w1.surname, w1.position, w1._Worker__income["wage"],\
              w1._Worker__income["bonus"])
print(w2.get_full_name())
print(w3.get_total_income())
