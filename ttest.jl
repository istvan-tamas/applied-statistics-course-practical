using Distributions, StatsBase

mu0 = -1.47
alpha = 0.06
mode = 1.0

sample = [-1.16, -1.78]

t = (mean(sample) - mu0)*sqrt(length(sample))/std(sample)

d = TDist(length(sample)-1)

if quantile(d, 0.1) < alpha
    println("0")
else
    println("1")
end