using Distributions
using StatsBase
using HypothesisTests
using Printf

function ttest_2(input, sample)
    mu0 = input[1]
    alpha = input[2]
    mode = input[3]
    
    t = OneSampleTTest(mean(sample), std(sample), length(sample), mu0).t
    d = TDist(length(sample)-1)

    if mode == 0
        d = 2*TDist(length(length(sample)-1))
        p = cdf(d, t)
    elseif mode == 1 || mode == -1
        d = TDist(length(length(sample)-1))
        p = cdf(d, t)
    end
    
    if p <= alpha
        return 1
    else
        return 0
    end
end

function ttest(fin, fout)
    input = parse.(Float64,split(readline(fin)))
    sample = parse.(Float64,split(readline(fin)))
    println(fout,ttest_2(input, sample))
end
  
solve(fin, fout)=ttest(fin, fout)
  
if abspath(PROGRAM_FILE)==@__FILE__
    solve(stdin, stdout)
end