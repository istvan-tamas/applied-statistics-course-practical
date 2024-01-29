solve(N,K)=1.0-(N-K)*(N-K-1)/(N*(N-1));
n,k=parse.(Int,split(readline()))
println(solve(n,k))