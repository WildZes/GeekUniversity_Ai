# -*- coding: utf-8 -*-
"""
5) Реализуйте базовый класс Car. У данного класса должны быть следующие
   атрибуты: speed, color, name, is_police (булево).  А также методы: go, stop,
   turn(direction), которые должны сообщать, что машина поехала, остановилась,
   повернула (куда). Опишите несколько дочерних классов: TownCar, SportCar,
   WorkCar, PoliceCar. Добавьте в базовый класс метод show_speed, который
   должен показывать текущую скорость автомобиля. Для классов TownCar и WorkCar
   переопределите метод show_speed. При значении скорости свыше 60 (TownCar) и
   40 (WorkCar) должно выводиться сообщение о превышении скорости.

Создайте экземпляры классов, передайте значения атрибутов. Выполните доступ к
атрибутам, выведите результат. Выполните вызов методов и также покажите
результат.
"""
class Car:
    def __init__(self, speed, color, name, is_police = False):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police
        
    def go(self):
        print(f'{self.name} поехала')
        
    def stop(self):
        print(f'{self.name} остановилась')
        
    def turn(self, direction):
        if direction == 'left':
            print(f'{self.name} повернула налево')
        elif direction == 'right':
            print(f'{self.name} повернула направо')
            
    def show_speed(self):
        return self.speed
    
    def show_police(self):
        return self.is_police
            
class PoliceCar(Car):
    def __init__(self, *args, **kwargs):
        kwargs['is_police'] = True
        super(PoliceCar, self).__init__(*args, **kwargs)
        
class TownCar(Car):
    def show_speed(self):
        if self.speed > 60:
            print(f'{self.name} двигается с превышением скорости: {self.speed}')
        else:
            print(f'{self.name} двигается со скоростью: {self.speed}')

class SportCar(Car):
    pass

class WorkCar(Car):
    def show_speed(self):
        if self.speed > 40:
            return str(self.name) + ' двигается с превышением скорости: ' +\
            str(self.speed)
        else:
            return str(self.name) + ' двигается со скоростью: ' +\
            str(self.speed)
            
c = Car(320, 'Red', 'Ferrari')
c.go()
c.turn('left')
c.turn('right')
c.stop()
print(c.show_speed())
print(c.show_police())
print('*' * 50)
pc = PoliceCar(500, 'Black', 'Chevrolet')
pc.go()
print(pc.show_speed())
print(pc.show_police())
print('*' * 50)
pc = PoliceCar(500, 'Black', 'Chevrolet')
pc.go()
print(pc.show_speed())
print(pc.show_police())
print('*' * 50)
tc = TownCar(75, 'Yellow', 'Lada')
tc.go()
tc.turn('left')
tc.show_speed()
print('*' * 50)
wc = WorkCar(45, 'Orange', 'Truck')
wc.go()
print(wc.show_speed())
wc.stop()
print('*' * 50)
sc = SportCar(500, 'Green', 'Lamborghini', True)
sc.go()
print(sc.show_police())