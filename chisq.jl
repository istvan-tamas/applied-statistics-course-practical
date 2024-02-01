using HypothesisTests
using Distributions

function chisq(info, dist, sample)

    k = info[1]
    alpha = info[2]

    a = dist
    b = sample
    obs_freq = [sum(b .== i) for i in 1:length(a)]
    sample = length(a)

    chi2_test = ChisqTest(obs_freq, a)

    p = ccdf(Chisq(sample-1), cquantile(Chisq(sample-1),alpha))

    if p < alpha
        print(chi2_test.stat, " ", cquantile(Chisq(sample-1),alpha), " ", 0)
    else
        print(chi2_test.stat, " ", cquantile(Chisq(sample-1),alpha), " ", 1)
    end
end

info = parse.(Float64,split(readline()))
dist = parse.(Float64,split(readline()))
sample = parse.(Float64,split(readline()))

chisq(info, dist, sample)