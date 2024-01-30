using Distributions, StatsBase, HypothesisTests

mu0 = -1.47
alpha = 0.06
mode = 1.0

sample = [-1.16, -1.78]

t = OneSampleTTest(mean(sample), std(sample), length(sample), mu0)

if mode == 0
    d = 2*TDist(length(sample))
elseif mode == 1 || mode == -1
    d = TDist(length(sample)-1)
end


if quantile(d, 1-alpha) < alpha
    println("1")
else
    println("0")
end