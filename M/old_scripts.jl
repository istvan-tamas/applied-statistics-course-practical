pre=fill(0.0, 6*S)
p=(1.0/6.0)^S

for i=1:6,j=1:6,k=1:6 
  pre[i+j+k]+=p
end

S=parse(Int,readline())
println(pre)




function random_walk(n)
  position = 0
  for i in 1:n
      step = rand([-1, 1])
      position += step
  end
  return position
end

function simulate_walks(n, simulations)
  count = 0
  for i in 1:simulations
      final_position = random_walk(n)
      if final_position == 0
          count += 1
      end
  end
  return count / simulations
end

# Simulate the random walk for n steps
n = parse(Int, readline())
simulations = 100000
probability = simulate_walks(n, simulations)