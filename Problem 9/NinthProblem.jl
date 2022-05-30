# https://projecteuler.net/problem=9
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

function checkSum(a::Int64, b::Int64, c::Int64, d::Int64)
    return a + b + Int64(c) == d
end

function main()
    for i in 1:400
        for j in (i+1):400
            candidate = sqrt(i^2+j^2)
            if !(isinteger(candidate)) continue end
            println(string("$i ","$j ","$candidate ", "$(i+j+candidate)"))
            if checkSum(i,j,Int64(candidate),1000)
                println((i,j,Int64(candidate)))
                return i*j*candidate
            end
        end
    end
end
