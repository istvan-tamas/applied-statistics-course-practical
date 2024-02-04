function set2_2(N)
    return 3^N/2^(2*N)
end

function set2(fin, fout)
    N=parse(Int, readline(fin))
    if (N < 0 || N > 20)
        return 0
    else
        println(fout,set2_2(N))
    end 
end
  
 solve(fin, fout)=set2(fin, fout)
  
if abspath(PROGRAM_FILE)==@__FILE__
    solve(stdin, stdout)
end