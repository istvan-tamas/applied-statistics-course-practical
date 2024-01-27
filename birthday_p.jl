function bday_p(p)
    for i in range(0,364)
        if prod(1 .- range(0,i)/365) >= p
            return i
        end
    end
end


p = parse(Float64, readline())

print(bday_p(p))