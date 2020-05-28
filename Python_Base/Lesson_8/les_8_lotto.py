# -*- coding: utf-8 -*-
"""
== Лото ==

Правила игры в лото.

Игра ведется с помощью специальных карточек, на которых отмечены числа,
и фишек (бочонков) с цифрами.

Количество бочонков — 90 штук (с цифрами от 1 до 90).

Каждая карточка содержит 3 строки по 9 клеток. В каждой строке по 5 случайных цифр,
расположенных по возрастанию. Все цифры в карточке уникальны. Пример карточки:

--------------------------
    9 43 62          74 90
 2    27    75 78    82
   41 56 63     76      86
--------------------------

В игре 2 игрока: пользователь и компьютер. Каждому в начале выдается
случайная карточка.

Каждый ход выбирается один случайный бочонок и выводится на экран.
Также выводятся карточка игрока и карточка компьютера.

Пользователю предлагается зачеркнуть цифру на карточке или продолжить.
Если игрок выбрал "зачеркнуть":
    Если цифра есть на карточке - она зачеркивается и игра продолжается.
    Если цифры на карточке нет - игрок проигрывает и игра завершается.
Если игрок выбрал "продолжить":
    Если цифра есть на карточке - игрок проигрывает и игра завершается.
    Если цифры на карточке нет - игра продолжается.

Побеждает тот, кто первый закроет все числа на своей карточке.

Пример одного хода:

Новый бочонок: 70 (осталось 76)
------ Ваша карточка -----
 6  7          49    57 58
   14 26     -    78    85
23 33    38    48    71
--------------------------
-- Карточка компьютера ---
 7 87     - 14    11
      16 49    55 88    77
   15 20     -       76  -
--------------------------
Зачеркнуть цифру? (y/n)

Подсказка: каждый следующий случайный бочонок из мешка удобно получать
с помощью функции-генератора.

Подсказка: для работы с псевдослучайными числами удобно использовать
модуль random: http://docs.python.org/3/library/random.html
"""
import random
import os
import time

class Card:
    def __init__(self):
        self.card = random.sample([i for i in range(1, 91)], 15)
        
    def __str__(self):
        out_string = ''
        index = 1
        for i in self.card:
            if index % 5 != 0:
                out_string += str(i) + ' '
            else:
                out_string += str(i) + '\n'
            index += 1
        return out_string.strip('\n')
        
#player = Card()
#computer = Card()
#print(player)
#print('*' * 50)
#print(computer)
#input('pause')

class Game:
    def __init__(self, card1, card2):
        self.card1 = card1
        self.card2 = card2
        self.result1 = card1
        self.result2 = card2
        self.all_num = [i for i in range(1, 91)]
        self.exit = True
        
    def fail(self, ans, num):
        if ans.lower() == 'y' and num not in self.result1.card:
            exit = False
            print('Не надо было вычеркивать. Вы проиграли!')
        elif ans.lower() == 'n' and num in self.result1.card:
            print('Надо было вычеркивать. Вы проиграли!')
            exit = False
        elif ans != 'n' and ans != 'y':
            print(f'Вы решили покинуть игру...')
            exit = False
        else:
            if num in self.result1.card:
                self.result1.card.remove(num)
            if num in self.result2.card:
                self.result2.card.remove(num)
            exit = Trueprint("\033[%d;%dH" % (1, 1))
        return exit
    
    def start(self):
#        os.system('clear')
        print('\n' * 100)
        print('\033[H')
        user_choice  = input('Начнем? y/n (все остальное для выхода) ')
        if user_choice == 'y':
            exit = True
        else:
            exit = False
        while exit:
            print('\n' * 100)
            print("\033[%d;%dH" % (1, 1))
#            os.system('clear')
            #print(self.all_num)
            choosed_number = random.choice(self.all_num)
            self.all_num.remove(choosed_number)
            print(f'Новый бочонок: {choosed_number} (осталось {len(self.all_num)})')
            #print(self.all_num)
            self.output()
            user_choice = input('Вычеркиваем? y/n (все остальное для выхода) ')
            exit = self.fail(user_choice, choosed_number)   
                
    def output(self):
        print('Карточка пользователя')
        print(self.card1)
        print('Результат пользователя')
        print(self.result1)
        print('Карточка компьютера')
        print(self.card2)
        print('Результат компьютера')
        print(self.result2)

            
game = Game(Card(), Card())
game.start()
