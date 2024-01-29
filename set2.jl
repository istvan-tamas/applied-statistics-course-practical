function calc_set(N)
    return 3^N/2^(2*N)
end

N=parse(Int, readline())
println(calc_set(N))