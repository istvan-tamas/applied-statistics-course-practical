function solve(N,K)
    return 1.0-(N-K)*(N-K-1)/(N*(N-1))
end

function expected(p)
    return p*((1/4 * 2) + (1/4 * 3) + (1/4 * 4) + (1/4 * 5))
end

n,k=parse.(Int,split(readline()))



p = solve(n,k)
e = expected(p)    

println(p)
println(e)