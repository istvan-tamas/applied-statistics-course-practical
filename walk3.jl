function walk3_2(sample)
    x = zeros(Float64, sample + 2)
    x[1] = 1.0
    x[2] = 0.5
    for i in 3:sample + 1
        x[i] = x[i - 1] * 0.5 + x[i - 2] * 0.5
    end
    return x[sample + 1]
end

function walk3(fin, fout)
    sample = parse(Int, readline(fin))
    if sample < 0 || sample > 60
        return 0
    else
        println(fout,walk3_2(sample))
    end
end
  
solve(fin, fout)=walk3(fin, fout)
  
if abspath(PROGRAM_FILE)==@__FILE__
    solve(stdin, stdout)
end