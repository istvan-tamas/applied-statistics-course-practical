t = parse(Int, readline())

x = zeros(Float64, t + 2)

x[1] = 1.0
x[2] = 0.5

for i in 3:t + 1
    x[i] = x[i - 1] * 0.5 + x[i - 2] * 0.5
end

println(x[t + 1])