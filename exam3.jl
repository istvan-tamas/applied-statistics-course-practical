function exam3(N,p)
    x = 0
    for i in 1:N
        x = 1-(N-i)*(N-i-1)/(N*(N-1))
        if x > p
            return i
        end
    end 
end

N,P=parse.(Float64,split(readline()))

if (N <= 1 || N > 30)
    return 0
elseif (P > 1 || P < 0)
    return 0
else
    println(trunc(Int64,exam3(N,P)))
end