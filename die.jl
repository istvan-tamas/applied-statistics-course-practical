S=parse(Int,readline())

pre=fill(0.0, 6*2)
p=(1.0/6.0)^2


for i=1:6,j=1:6
  pre[i+j]+=p
end


println(pre[2:12])