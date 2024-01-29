p = 0.6

N = 3
for i in 2:N
    solve(N,i)
end 

function solve(N,i)
    return 1-(N-i)*(N-i-1)/(N*(N-1))
end