function bday_p(p)
    x = 0.0
    for i in range(1,365)
        x = 1 - prod(1.0 .- range(0,i-1)/365.0)
        if x >= p
            return i
        end
    end
end

p = parse(Float64, readline())

if p >= 1.0 || p < 0.0
    return 0
else
    println(bday_p(p))
end