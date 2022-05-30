# https://projecteuler.net/problem=4

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

function checkPalindrome(num::Int64)
    string = "$(num)"
    return string == reverse(string)
end

function main()
    max = 0
    for i in 100:999
        for j in i:999
            if checkPalindrome(i*j)
                if i*j>max max = i*j end
            end
        end
    end
    return max
end
