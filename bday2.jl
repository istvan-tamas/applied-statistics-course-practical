using Ranges

function bday2(p)
    x = 0.0
    for i in range(1,365)
        x = 1 - prod(1.0 .- range(0,i-1)/365.0)
        if x >= p
            return i-1
        end
    end
end

p = parse(Float64, readline())

if p >= 1.0 || p < 0.0
    return 0
else
    println(bday2(p))
end