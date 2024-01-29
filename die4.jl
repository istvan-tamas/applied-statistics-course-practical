pre=fill(0.0, 6)

p=(1.0/6.0)^S
for i=1:6,j=1:6
  pre[max(i,j)]+=p
end


S=parse(Int,readline())
println(0<S<7 ? pre[S] : 0.0)