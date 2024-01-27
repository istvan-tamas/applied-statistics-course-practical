function bday(m)
    if m < 2
        return 0
    elseif m > 365
        return 1
    else
        return 1 - prod(1 .- range(0,m-1)/365)
    end 
end


m = parse(Float64, readline())

print(bday(m))