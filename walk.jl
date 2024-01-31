function walk(P,p)
    return binomial(P, round(Int,p)) * (0.5^P)
end

P = parse(Int, readline())

if P < 0 || P > 60
    return 0
elseif P == 1
    print(0)
else
    p = P/2
    res = walk(P,p)
    print(res)
end