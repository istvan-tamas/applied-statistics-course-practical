using HypothesisTests
using Distributions
using Printf

function chisq_2(info, dist, sample)

    k = info[1]
    alpha = info[2]

    a = dist
    b = sample
    obs_freq = [sum(b .== i) for i in 1:length(a)]
    sample = length(a)

    chi2_test = ChisqTest(obs_freq, a)

    p = ccdf(Chisq(sample-1), cquantile(Chisq(sample-1),alpha))

    if p < alpha
        fout = @sprintf("%.12f %.12f %d", chi2_test.stat, cquantile(Chisq(sample-1),alpha), 0)
        return fout
    else
        fout = @sprintf("%.12f %.12f %d", chi2_test.stat, cquantile(Chisq(sample-1),alpha), 1)
        return fout
    end
end

function chisq(fin, fout)
  info = parse.(Float64,split(readline(fin)))
  dist = parse.(Float64,split(readline(fin)))
  sample = parse.(Float64,split(readline(fin)))
  println(fout,chisq_2(info, dist, sample))
end
  
solve(fin, fout)=chisq(fin, fout)
  
if abspath(PROGRAM_FILE)==@__FILE__
  solve(stdin, stdout)
end