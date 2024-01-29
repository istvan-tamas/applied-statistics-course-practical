#solve(N,K)=1.0-(N-K)*(N-K-1)/(N*(N-1));
#n,k=parse.(Int,split(readline()))
#println(solve(n,k))

function exam_p(n,p)
    x = 0.0
    if p <= 0.0
        return 0
    else
        for i in range(1,n)
            x = 1 - prod(1.0 .- range(0,i-1)/n)
            if x >= p
                return i
            end
        end
    end
end

n,p=parse.(Float64,split(readline()))

println(exam_p(n,p))