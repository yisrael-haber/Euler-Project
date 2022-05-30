# https://projecteuler.net/problem=3

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

function largestFactor(num::Int64)
    d = 2
    while num > 1
        while num%d==0 num/= d end
        d += 1
    end
    return d-1
end

println(largestFactor(600851475143))
