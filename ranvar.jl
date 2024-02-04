using Printf

function ranvar_2(v,p)
    exp = 0
    for i in 1:length(v)
        exp += sum(v[i]*p[i])
    end

    sd = 0
    sd = sqrt(sum((v[j]-exp)^2*p[j] for j in 1:length(p)))
    fout = @sprintf("%.12f %.12f", exp, sd)
    return fout
end

function ranvar(fin, fout)
    v = parse.(Int64,split(readline(fin)))
    p = parse.(Float64,split(readline(fin)))
    println(fout,ranvar_2(v,p))
end
  
solve(fin, fout)=ranvar(fin, fout)
  
if abspath(PROGRAM_FILE)==@__FILE__
    solve(stdin, stdout)
end