function calc_mat(a,b)
    if length(a) > length(b)
        print(sum(sum((a*b') .> 0))/(length(a) * length(b)))
    elseif length(a) < length(b)
        print(sum(sum((b'*a) .> 0))/(length(a) * length(b)))
    else
        print(sum(sum((a*b') .> 0))/(length(a) * length(b)))
    end
end

info = parse.(Int64,split(readline()))
a = parse.(Int64,split(readline()))
b = parse.(Int64,split(readline()))

calc_mat(a,b)