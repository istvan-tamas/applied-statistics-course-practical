function max_die(n,m)
    k=(M^n)-((M-1)^n)
    P=k/(6^n)
    return P
end

n,M=parse.(Int,split(readline()))

if (n >= 30 || n < 0)
    return 0
else
    if (M > 10 || M <= 0)
        return 0
    else
        println(max_die(n,M))
    end
end