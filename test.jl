function p_dice(dice, n)
    return sum(1/6 * p_dice(dice-1, n-outcome) for outcome in 1:6)
end

println(p_dice(2, 7))