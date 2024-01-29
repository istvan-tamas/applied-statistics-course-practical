using Distributions
N,K=parse.(Int, split(readline()))
P=pdf(Binomial(N,0.5),K) # pdf=prob. density function
println(P)

(N alatt M)/2N