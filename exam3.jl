function exam3_2(N,p)
    x = 0
    for i in 1:N
        x = 1-(N-i)*(N-i-1)/(N*(N-1))
        if x > p
            return i
        end
    end 
end

function exam3(fin, fout)
    N,P=parse.(Float64,split(readline(fin)))
    if (N <= 1 || N > 30)
        return 0
    elseif (P > 1 || P < 0)
        return 0
    else
        println(fout,trunc(Int64,exam3_2(N,P)))
    end
end
  
solve(fin, fout)=exam3(fin, fout)

if abspath(PROGRAM_FILE)==@__FILE__
    solve(stdin, stdout)
end