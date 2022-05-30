# In the 20×20 grid below, four numbers along a diagonal line have been marked in red.
#
# The product of these numbers is 26 × 63 × 78 × 14 = 1788696.
#
# What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20×20 grid?

using DelimitedFiles

function doRight(grid::Matrix{Int64}, i::Int64, j::Int64)
    if j>17 return 0 end
    return (grid[i, j] * grid[i, j+1] * grid[i, j+2] * grid[i, j+3])
end

function doBottom(grid::Matrix{Int64}, i::Int64, j::Int64)
    if i>17 return 0 end
    return (grid[i, j] * grid[i+1, j] * grid[i+2, j] * grid[i+3, j])
end

function doDiagDown(grid::Matrix{Int64}, i::Int64, j::Int64)
    if i>17 || j>17 return 0 end
    return (grid[i, j] * grid[i+1, j+1] * grid[i+2, j+2] * grid[i+3, j+3])
end

function doDiagUp(grid::Matrix{Int64}, i::Int64, j::Int64)
    if i<4 || j>17 return 0 end
    return (grid[i, j] * grid[i-1, j+1] * grid[i-2, j+2] * grid[i-3, j+3])
end

function main()
    direc = string(pwd(), "\\Problem 11\\grid.txt")
    grid = readdlm(direc, ' ', Int)
    prods = []
    for i in 1:20
        for j in 1:20
            rval = doRight(grid, i, j)
            bval = doBottom(grid, i, j)
            dval1 = doDiagDown(grid, i, j)
            dval2 = doDiagUp(grid, i, j)
            push!(prods, rval, bval, dval1, dval2)
        end
    end
    print(prods[1:3])
    print(maximum(prods))
end

direc = string(pwd(), "\\Problem 11\\grid.txt")
grid = readdlm(direc, ' ', Int)
