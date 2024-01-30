pre=fill(0.0, 6*S)
p=(1.0/6.0)^S

for i=1:6,j=1:6,k=1:6 
  pre[i+j+k]+=p
end

S=parse(Int,readline())
println(pre)