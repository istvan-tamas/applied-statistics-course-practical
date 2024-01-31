using Statistics

function desc(input)
    println(mean(input), " ", std(input), " ", median(input))
end

input = parse.(Float64,split(readline()))
desc(input)