using Statistics
using Distributions

function ztest(input, sample)
    u = input[1]
    sig = input[2]
    alpha = input[3]
    mode = input[4]
     
    n = length(sample)
    mean = Statistics.mean(sample)
    z = (mean - u) / (sig/sqrt(n))
    
    if mode == 0
        p = 2*(1-cdf(Normal(0,1), abs(z)))
    elseif mode == 1 || mode == -1
        p = 1-cdf(Normal(0,1), abs(z))
    end
    
    if p < alpha
        println(1)
    else
        println(0)
    end
end

input = parse.(Float64,split(readline()))
sample = parse.(Float64,split(readline()))

ztest(input, sample)