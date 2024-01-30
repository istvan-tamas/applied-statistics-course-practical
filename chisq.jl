using HypothesisTests
using Distributions

k = 3
alpha = 0.1

a = [0.1279296875,0.0078125,0.8642578125]
b = [3, 1, 3,3,3,3]


# Megfigyelt frekvenciák kiszámítása
obs_freq = [sum(b .== i) for i in 1:length(a)]
sample = length(a)

# χ2 test statistic calculation
chi2_test = ChisqTest(obs_freq, a)

println(chi2_test.stat)

println(cquantile(Chisq(sample-1),alpha))

p = ccdf(Chisq(sample-1), cquantile(Chisq(sample-1),alpha))

if p < alpha
    println("1")
else
    println("0")
end