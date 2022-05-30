# https://projecteuler.net/problem=3

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def largest_factor(n):
    """Returns all the prime factors of a positive integer"""
    d = 2
    while n > 1:
        while n % d == 0:
            n /= d
        d = d + 1
    return d-1

pfs = largest_factor(600851475143)
print(pfs)
