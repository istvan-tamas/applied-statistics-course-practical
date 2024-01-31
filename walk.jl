function walk(P,p)
    return binomial(P, round(Int,p)) * (0.5^P)
end

P = parse(Int, readline())

if P < 0 || P > 60
    return 0
else
    p = P/2
    println(walk(P,p))
end