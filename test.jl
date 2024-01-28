n=parse(Int,readline())
pre=fill(0.0, 6*n)
p=(1.0/6.0)^n

function calc_prob(n)
    i=1
    while i < n
        for j in 1:6
            pre[i+j]+=p
        end
        calc_prob(n-1)
    end
end

calc_prob(n)
println(pre)