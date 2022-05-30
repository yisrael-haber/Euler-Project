# https://projecteuler.net/problem=6
#
# The sum of the squares of the first ten natural numbers is,
#
# The square of the sum of the first ten natural numbers is,
#
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is .
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def square_of_sums(num):
    return (int((num*(num+1))/2))**2

def sum_of_squares(num):
    return sum([i**2 for i in range(1,num+1)])

def main(num):
    print(square_of_sums(num)-sum_of_squares(num))
    return square_of_sums(num)-sum_of_squares(num)

if __name__=="__main__":
    main(100)
