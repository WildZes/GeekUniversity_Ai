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
import copy

class Card:
    def __init__(self):
        spam = random.sample([i for i in range(1, 91)], 15)
        self.card = [sorted(spam[i:i + 5]) for i in range(0, len(spam), 5)]
        
    def __str__(self):
        return '\n'.join(' '.join(map(str, line)) for line in self.card)


class Game:
    def __init__(self, card1, card2):
        self.card1 = card1
        self.card2 = card2
        self.result1 = copy.deepcopy(card1)
        self.result2 = copy.deepcopy(card2)
        self.all_num = [i for i in range(1, 91)]
        self.exit = True
        
    def fail(self, ans, num):
        if ans.lower() == 'y' and all(num not in line for line in self.result1.card):
            exit = False
            print('Не надо было вычеркивать. Вы проиграли!')
        elif ans.lower() == 'n' and any(num in line for line in self.result1.card):
            print('Надо было вычеркивать. Вы проиграли!')
            exit = False
        elif ans != 'n' and ans != 'y':
            print(f'Вы решили покинуть игру...')
            exit = False
        else:
            for line in self.result1.card:
                if num in line:
                    line.remove(num)
            for line in self.result2.card:
                if num in line:
                    line.remove(num)
            exit = True
        return exit
    
    def start(self):
        st_res1, st_res2 = self.result1.card, self.result2.card
        print('\n' * 100)
        user_choice  = input('Начнем? y/n (все остальное для выхода) ')
        if user_choice == 'y':
            exit = True
        else:
            exit = False
        while exit:
            print('\n' * 100)
            if len(st_res1[0]) + len(st_res1[1]) + len(st_res1[2]) == 0:
                print("Большая Человеческая Победа!!!")
                break
            if len(st_res2[0]) + len(st_res2[1]) + len(st_res2[2]) == 0:
                print("Восстание машин закончилось их победой...")
                break
            choosed_number = random.choice(self.all_num)
            self.all_num.remove(choosed_number)
            print(f'Новый бочонок: {choosed_number} (осталось {len(self.all_num)})')
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
