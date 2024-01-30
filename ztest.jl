using Statistics
using Distributions

u = -1.325
sig = 9.85
alpha = 0.02
mode = 0.0

sample = [-8.29, 5.64]


n = length(sample)
mean = Statistics.mean(sample)
z = (mean - u) / (sig/sqrt(n))


if mode == 0
    p = 2*(1-cdf(Normal(0,1), abs(z)))
elseif mode == 1 || mode == -1
    p = 1-cdf(Normal(0,1), z)
end

if p > alpha
    println("0")
else
    println("1")
end