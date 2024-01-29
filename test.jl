using Memoize # using Pkg; Pkg.add("Memoize")
@memoize function p_dice(dice, sides, n)
    # Returns the probability dice dice with side sides
    # sum up to n,
    # where side ∈ 1:sides
    if dice == 1
        if 1 <= n <= sides
            return 1/sides
        else
            return 0
        end
    end
    return sum(1/sides * p_dice(dice-1, sides, n-outcome) for outcome in 1:sides)
end

n = 4

for i in n:n*6
    println(p_dice(n, 6, i))
end