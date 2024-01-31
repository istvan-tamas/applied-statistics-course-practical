function set2(N)
    return 3^N/2^(2*N)
end

N=parse(Int, readline())

if (N < 0 || N > 20)
    return 0
else
    println(set2(N))
end