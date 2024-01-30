n,M=parse.(Int,split(readline()))

k=(M^n)-((M-1)^n)
P=k/(6^n)


println(P)