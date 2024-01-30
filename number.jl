a=[]
b=[]

a,b=parse.(Float64, split(readline()))

a = [-6, -9, 4, 2]
b = [10, 9, -5, -10, 0]


println(sum(sum((a*b') .> 0))/(length(a) + length(b)))