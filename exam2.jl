function exam2_2(N,K)
    e = 0
    p = 1.0-(N-K)*(N-K-1)/(N*(N-1))
    for i in 2:5
        e += p*(i*(1/4))
    end
    return e + (1 * (1 - p))
end

function exam2(fin, fout)
    N,K = parse.(Int64,split(readline(fin)))
    if (N > 30 || K > N)
        return 0
    elseif (K < 0)
        return 0
    else
        println(fout,exam2_2(N,K))
    end
end
  
solve(fin, fout)=exam2(fin, fout)
  
if abspath(PROGRAM_FILE)==@__FILE__
    solve(stdin, stdout)
end