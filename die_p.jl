function calc_sum_prob(n)
  for i=1:6
    pre[i+i+i]+=p
  end
  if n>1
    calc_sum_prob(n-1) 
  end
end

n=parse(Int,readline())
S=parse(Int,readline())

pre=fill(0.0, 6*n)
p=(1.0/6.0)^n

calc_sum_prob(n)
println(pre)