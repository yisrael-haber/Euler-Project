# https://projecteuler.net/problem=5

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

function isPrime(num::Int64)
    for i in 2:Int64(floor(sqrt(num))) if num%i==0 return false end end
    return true
end

function main(num::Int64)
    primes = Dict()
    for i in 2:num if isPrime(i) primes[i]=1 end end
    for pair in primes
        val, i = pair[1], 1
        primer = val
        while primer * val < num
            primer = primer * val
            i += 1
        end
        primes[val]=i
    end
    prod = 1
    for pair in primes prod *= pair[1]^pair[2] end
    return prod
end
