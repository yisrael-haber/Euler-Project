# https://projecteuler.net/problem=6
#
# The sum of the squares of the first ten natural numbers is,
#
# The square of the sum of the first ten natural numbers is,
#
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is .
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

function squareOfSums(num::Int64)
    return (Int64((num*(num+1))/2))^2
end

function sumOfSquares(num::Int64)
    return sum([i^2 for i in 1:num])
end

function main(num::Int64)
    return squareOfSums(num)-sumOfSquares(num)
end
