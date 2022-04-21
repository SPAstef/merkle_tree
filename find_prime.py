from math import gcd
from sympy import isprime
from random import randrange


x = randrange(0, 1 << 256)

if not x & 1:
    x += 1

while not isprime(x) or gcd(x - 1, 3) != 1:
    x += 2

print(x)

