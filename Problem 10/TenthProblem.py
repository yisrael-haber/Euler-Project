# https://projecteuler.net/problem=10
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

import math

def is_prime(num):
    check = int(math.floor(math.sqrt(num))) + 1
    for i in range(2, check):
        if num%i==0:
             return False
    return True

def main(num):
    sum = 0
    for i in range(2,num+1):
        if is_prime(i):
            sum += i
    print(sum)


if __name__=="__main__":
    main(2000000)
