using Distributions
using StatsBase
using HypothesisTests

function ttest(input, sample)
    mu0 = input[1]
    alpha = input[2]
    mode = input[3]
    
    t = OneSampleTTest(mean(sample), std(sample), length(sample), mu0)
    
    if mode == 0
        d = 2*TDist(length(sample))
    elseif mode == 1 || mode == -1
        d = TDist(length(sample)-1)
    end
    
    if quantile(d, 1-alpha) < alpha
        println(1)
    else
        println(0)
    end
end

input = parse.(Float64,split(readline()))
sample = parse.(Float64,split(readline()))

ttest(input, sample)