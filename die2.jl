using Memoize
@memoize function die2_2(dice, n)
    if dice == 1
        if 1 <= n <= 6
            return 1/6
        else
            return 0
        end
    end
    return sum(1/6 * die2(dice-1, n-outcome) for outcome in 1:6)
end

function die2(fin, fout)
    n = parse(Float64, readline(fin))
    if n >= 55 || n <= 0
        return 0
    else
        for i in n:n*6
            println(fout, die2_2(n,i)) 
        end   
    end
end
  
solve(fin, fout)=die2(fin, fout)
  
if abspath(PROGRAM_FILE)==@__FILE__
    solve(stdin, stdout)
end