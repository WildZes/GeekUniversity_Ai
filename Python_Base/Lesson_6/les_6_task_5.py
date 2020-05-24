# -*- coding: utf-8 -*-
"""
5) Реализовать класс Stationery (канцелярская принадлежность). Определить в нем
   атрибут title (название) и метод draw (отрисовка). Метод выводит сообщение
   “Запуск отрисовки.” Создать три дочерних класса Pen (ручка), Pencil
   (карандаш), Handle (маркер). В каждом из классов реализовать переопределение
   метода draw. Для каждого из классов метод должен выводить уникальное
   сообщение. Создать экземпляры классов и проверить, что выведет описанный
   метод для каждого экземпляра.
"""
class Stationery:
    def __init__(self, title):
        self.title = title
        
    def draw(self):
        print('Запуск отрисовки')
        
class Pen(Stationery):
    def draw(self):
        print(f'{self.title} в режиме отрисовки')
        
class Pencil(Stationery):
    def draw(self):
        print(f'{self.title} в режиме отрисовки')
        
class Handle(Stationery):
    def draw(self):
        print(f'{self.title} в режиме отрисовки')


pen = Pen('авторучка')
pen.draw()
print('*' * 50)
pencil = Pencil('карандаш')
pencil.draw()
print('*' * 50)
handle = Handle('маркер')
handle.draw()
print('*' * 50, end='\n' + '*' * 50 + '\n')
#Понимаю, что может быть так:
pen2 = Pen('карандаш')
pen2.draw()
print('*' * 50)
pencil2 = Pencil('маркер')
pencil2.draw()
print('*' * 50)
handle2 = Handle('авторучка')
handle2.draw()