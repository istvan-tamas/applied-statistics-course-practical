function number_2(a,b)
    if length(a) > length(b)
        return sum(sum((a*b') .> 0))/(length(a) * length(b))
    elseif length(a) < length(b)
        return sum(sum((b'*a) .> 0))/(length(a) * length(b))
    else
        return sum(sum((a*b') .> 0))/(length(a) * length(b))
    end
end

function number(fin, fout)
    info = parse.(Int64,split(readline(fin)))
    a = parse.(Int64,split(readline(fin)))
    b = parse.(Int64,split(readline(fin)))
    println(fout,number_2(a,b))
end
  
solve(fin, fout)=number(fin, fout)
  
if abspath(PROGRAM_FILE)==@__FILE__
    solve(stdin, stdout)
end