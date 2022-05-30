# https://projecteuler.net/problem=9
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
import math

def main():
    for i in range(401):
        for j in range(i+1, 401):
            candidate = math.sqrt(i**2 + j**2)
            if not math.floor(candidate) == candidate:
                continue
            if i+j+candidate == 1000:
                return i*j*candidate
    return 0

if __name__=="__main__":
    main()
