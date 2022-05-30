# https://projecteuler.net/problem=8
#
# The four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.
#
# Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?
#
# (check numbers.txt file for the number)
#
function shingles(s::String, num::Int64)
    shingler = []
    for i in 1:(length(s) - num) push!(shingler, prodString(s[i:i+num-1])) end
    return shingler
end

function prodString(s::String) return prod([parse(Int64, char) for char in s]) end

function main()
    direc = string(pwd(), "\\Problem 8\\number.txt")
    numString = open(f->read(f, String), direc)[1:1000]
    shingler = shingles(numString, 13)
    return shingler[argmax(shingler)]
end
