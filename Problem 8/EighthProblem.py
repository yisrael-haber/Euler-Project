# https://projecteuler.net/problem=8
#
# The four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.
#
# Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?
#
# (check numbers.txt file for the number)

def prodString(s):
    prod = 1
    for i in range(len(s)):
        prod *= int(s[i])
    return prod

def shingles(s, num):
    shingler = []
    for i in range(len(s)-num+1):
        if i==0:
            print(s[i:i+num])
        shingler.append(prodString(s[i:i+num]))
    return shingler

def main():
    with open('./number.txt','r') as file:
        numStrings = file.read()
    shingler = shingles(numStrings[:1000], 13)
    print(max(shingler))


if __name__=="__main__":
    main()
