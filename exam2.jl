function solve(N,K)
    return 1.0-(N-K)*(N-K-1)/(N*(N-1))
end

function expected(p)
    e = 0
    for i in 2:5
        e += (i*p*(1/4))
    end
    return e
end

n,k=parse.(Int,split(readline()))



p = solve(n,k)
e = expected(p)    

println(p)
println(e)