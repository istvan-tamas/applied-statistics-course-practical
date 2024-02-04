using Statistics
using Distributions

function ztest_2(input, sample)
    u = input[1]
    sig = input[2]
    alpha = input[3]
    mode = input[4]
     
    n = length(sample)
    mean = Statistics.mean(sample)
    z_score = (mean - u) / (sig/sqrt(n))

    if mode == 0
        p = 2*(1-cdf(Normal(0,1), abs(z_score)))
    elseif mode == 1 || mode == -1
        p = cdf(Normal(0,1), abs(z_score))
    end
    
    if p < alpha
        return 1
    else
        return 0
    end
end

function ztest(fin, fout)
    input = parse.(Float64,split(readline(fin)))
    sample = parse.(Float64,split(readline(fin)))
    println(fout,ztest_2(input, sample))
end
  
solve(fin, fout)=ztest(fin, fout)

if abspath(PROGRAM_FILE)==@__FILE__
    solve(stdin, stdout)
end