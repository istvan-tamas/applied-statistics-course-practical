function walk_2(P,p)
    return binomial(P, round(Int,p)) * (0.5^P)
end

function walk(fin, fout)
    P = parse(Int, readline(fin))
    if P < 0 || P > 60
        return 0
    elseif P == 1
        println(fout,0)
    else
        p = P/2
        println(fout,walk_2(P,p))
    end
  end

solve(fin, fout)=walk(fin, fout)
  
if abspath(PROGRAM_FILE)==@__FILE__
    solve(stdin, stdout)
end