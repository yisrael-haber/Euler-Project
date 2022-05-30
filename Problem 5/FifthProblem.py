# https://projecteuler.net/problem=5

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
import math

def is_prime(num):
    for i in range(2, int(math.floor(math.sqrt(num))) + 1):
        if num%i==0:
             return False
    return True

def main(num):
    primes = dict()
    for i in range(2, num + 1):
        if is_prime(i):
            primes[i]=1
    for pair in primes:
        val, i = pair, 1
        primer = val
        while primer * val < num:
            primer = primer * val
            i += 1
        primes[val]=i
    prod = 1
    for pair in primes:
        val = pair**primes[pair]
        prod = prod * val
    return prod

if __name__=="__main__":
    main(20)
