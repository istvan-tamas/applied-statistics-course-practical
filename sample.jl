a = [8.0, 7.0, -3.0]
b = [1.5, 0.75, -1.25]

n = 3

sort!(a)
distribution = Float64[]

for q in b
    c = count(x -> (x < q), a)
    f_i = c / n

    for i in f_i
        push!(distribution, i)
    end
end


println(distribution)