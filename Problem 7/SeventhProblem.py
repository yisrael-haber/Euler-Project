# https://projecteuler.net/problem=7
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

import math

def is_prime(num):
    for i in range(2, int(math.floor(math.sqrt(num))) + 1):
        if num%i==0:
             return False
    return True

def main(num):
    i, primes = 2, [2]
    while len(primes) < num + 1:
        if is_prime(i):
            primes.append(i)
        i += 1
    return primes[-1]

if __name__=="__main__":
    main(10001)
