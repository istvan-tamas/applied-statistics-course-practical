function randwalk(T,N,n)
    dt = T/N
    dW = sqrt(dt) .* randn(N,n)
    cumsum!(dW,dW,dims=1)
    return 0:dt:T-dt,dW
end

println(randwalk(1,2,2))