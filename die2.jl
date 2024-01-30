using Memoize # using Pkg; Pkg.add("Memoize")
@memoize function p_dice(dice, n)
    # Returns the probability dice dice with side sides
    # sum up to n,
    # where side ∈ 1:sidess
    if dice == 1
        if 1 <= n <= 6
            return 1/6
        else
            return 0
        end
    end
    return sum(1/6 * p_dice(dice-1, n-outcome) for outcome in 1:6)
end

n = 4

for i in n:n*6
    println(p_dice(n, i))
end