using Combinatorics

M = parse(Int, readline())

println(Combinatorics.binomial(M+2,M) / 2^M)