# https://projecteuler.net/problem=1

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.
function sumDivs(num1::Int64, num2::Int64)
    howMany = Int64(floor((num2-1)/num1))
    top = howMany * num1
    return Int64((num1 + top) * (howMany/2))
end

function main(num1::Int64, num2::Int64, num::Int64)
    return sumDivs(num1, num)+sumDivs(num2, num) - sumDivs(num1*num2, num)
end
