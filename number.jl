#a = [361, 572, 473, 791]
#b = [816, -883, 642, -894]


function calc_mat(a,b)
    if length(a) > length(b)
        println(sum(sum((a*b') .> 0))/(length(a) * length(b)))
    elseif length(a) < length(b)
        println(sum(sum((b'*a) .> 0))/(length(a) * length(b)))
    else
        println(sum(sum((a*b') .> 0))/(length(a) * length(b)))
    end
end

data = readlines()

arrays = [parse.(Int, split(line)) for line in data]

println(calc_mat(arrays[2], arrays[3])