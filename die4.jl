function die4_2(n,M)
    k=(M^n)-((M-1)^n)
    P=k/(6^n)
    return P
end

function die4(fin, fout)
    n,M = parse.(Int64,split(readline(fin)))
    if (n > 30 || n <= 0)
        return 0
    else
        if (M >= 10 || M < 0)
            return 0
        else
            println(fout,die4_2(n,M))
        end
    end
end
  
solve(fin, fout)=die4(fin, fout)
  
if abspath(PROGRAM_FILE)==@__FILE__
    solve(stdin, stdout)
end