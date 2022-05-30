# https://projecteuler.net/problem=10
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

function isPrime(num::Int64)
    for i in 2:Int64(floor(sqrt(num))) if num%i==0 return false end end
    return true
end

function main(num::Int64)
    sum = 0
    for i in 2:num if isPrime(i) sum += i end end
    return sum
end
