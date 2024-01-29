using Statistics

input = Any[]

i = 0

for i in 100
    if readline() == ""
        break
    else
        input[i] = parse(Float64, readline())
    end
end


println(mean(input))
println(std(input))
println(median(input))

#mean = sum(input)/length(input)
#sd = sum(input)/length(input)

#for i in input
#    sd += (i-mean)^2/(length(input)-1)
#end

#median = sum(input)/length(input)





#userlist[i] = parse(Float64, userlist[i])