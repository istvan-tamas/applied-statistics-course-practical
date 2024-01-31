
function ranvar(v,p)
    exp = 0
    for i in 1:length(v)
        exp += sum(v[i]*p[i])
    end

    sd = 0
    sd = sqrt(sum((v[j]-exp)^2*p[j] for j in 1:length(p)))
    println(exp, " ", sd)
end

v = parse.(Int64,split(readline()))
p = parse.(Float64,split(readline()))

ranvar(v,p)