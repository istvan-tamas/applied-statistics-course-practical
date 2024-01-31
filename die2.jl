using Memoize # using Pkg; Pkg.add("Memoize")
@memoize function die2(dice, n)
    if dice == 1
        if 1 <= n <= 6
            return 1/6
        else
            return 0
        end
    end
    return sum(1/6 * die2(dice-1, n-outcome) for outcome in 1:6)
end

n = parse(Float64, readline())

if n >= 55 || n <= 0
    return 0
else
    for i in n:n*6
        println(die2(n, i))
    end
end