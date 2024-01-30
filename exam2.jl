function expected_exam(N,K)
    e = 0
    p = 1.0-(N-K)*(N-K-1)/(N*(N-1))
    for i in 2:5
        e += p*(i*(1/4))
    end
    return e + (1 * (1 - p))
end

N,K=parse.(Int,split(readline()))

if (N > 30 || K > N)
    return 0
elseif (K < 0)
    return 0
else
    println(expected_exam(N,K))
end