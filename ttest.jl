using Distributions, StatsBase

mu0 = -2.16
alpha = 0.09
mode = 0.0

sample = [-1.85, -2.47]

t = (mean(sample) - mu0)*sqrt(length(sample))/std(sample)

d = TDist(length(sample)-1)


if mode == 0
    d = 2*TDist(length(sample))
elseif mode == 1 || mode == -1
    d = TDist(length(sample)-1)
end


if quantile(d, 0.1) < alpha
    println("0")
else
    println("1")
end