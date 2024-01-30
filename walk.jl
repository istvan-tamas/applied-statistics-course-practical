
M = parse(Int, readline())

p = trunc(Int, M/2)

println(binomial(M, p) * (0.5^M))