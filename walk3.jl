function walk3(t)
    x = zeros(Float64, t + 2)
    x[1] = 1.0
    x[2] = 0.5
    for i in 3:t + 1
        x[i] = x[i - 1] * 0.5 + x[i - 2] * 0.5
    end
    return x[t + 1]
end

t = parse(Int, readline())

if t < 0 || t > 60
    return 0
else
    println(walk3(t))
end