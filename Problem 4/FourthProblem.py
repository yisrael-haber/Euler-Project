# https://projecteuler.net/problem=4

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def check_palindrome(num):
    stringer = str(num)
    return stringer == stringer[::-1]

def main():
    maxxer = 0
    for i in range(100,1000):
        for j in range(i, 1000):
            if i*j > maxxer:
                if check_palindrome(i*j):
                    maxxer = i*j
    print(maxxer)
    return maxxer

if __name__=="__main__":
    main()
