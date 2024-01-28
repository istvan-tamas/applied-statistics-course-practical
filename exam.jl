function solve(N,K)
    return 1.0-(N-K)*(N-K-1)/(N*(N-1))
end

function expected(p)
    grade = rand(2:5)
    return (grade * p) + (1.0 * (1-p))
end

n,k=parse.(Int,split(readline()))



p = solve(n,k)
e = expected(p)    

println(p)
println(e)