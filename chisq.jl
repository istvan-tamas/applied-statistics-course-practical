k = 3
alpha = 0.1

a = [0.1279296875,0.0078125,0.8642578125]
b = [3, 1, 3, 3, 3, 3]


x = sum((a-b)*(a-b)/a for (a,b) in zip(a,b))

println(x)