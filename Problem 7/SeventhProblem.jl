# https://projecteuler.net/problem=7
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

function isPrime(num::Int64)
    for i in 2:Int64(floor(sqrt(num))) if num%i==0 return false end end
    return true
end

function main(num::Int64)
    i, primes = 2, [2]
    while length(primes) < num + 1
        if isPrime(i) push!(primes, i) end
        i += 1
    end
    return last(primes)
end
