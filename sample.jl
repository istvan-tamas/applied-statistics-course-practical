function sample(n,m)
    a = length(n)
    sort!(n)
    distribution = Float64[]
    for q in m
        c = count(x -> (x < q), n)
        f_i = c / a

        for i in f_i
            push!(distribution, i)
        end
    end
    return distribution
end

info = parse.(Int64,split(readline()))
n = parse.(Float64,split(readline()))
m = parse.(Float64,split(readline()))

value = sample(n,m)

for i in value
    print(i, " ")
end