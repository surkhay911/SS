#! /usr/bin/env python
# -*- coding: utf-8 -*-

def binary(x):
    return bin(x)[2::]

def octal(x):
    return oct(x)[2::]

def hexa(x):
    return hex(x)[2::]

def decimal(x,y):
    return int(str(x),y)

def f(x,y,z):
    if x == 2:
        if y == 10:
            return decimal(z,x)
        elif y == 16:
            return hexa(decimal(z,x))
        elif y == 8:
            return octal(decimal(z,x))
    if x == 8:
        if y == 2:
            return binary(decimal(z,x))
        elif y == 10:
            return decimal(z,x)
        elif y == 16:
            return hexa(decimal(z,x))
    if x == 16:
        if y == 2:
            return binary(decimal(z,x))
        elif y == 10:
            return decimal(z,x)
        elif y == 8:
            return octal(decimal(z,x))
    if x == 10:
        if y == 2:
            return binary(decimal(z,x))
        elif y == 16:
            return hexa(int(z))
        elif y == 8:
            return octal(decimal(z,x))

import sys

while True:
    a = int(input('перевести из = '))
    b = int(input('перевести в = '))
    if b == 16 or a == 16:
        c = input('число = ')

    print('Ответ:'+str(f(a,b,c)))





    
