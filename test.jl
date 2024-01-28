S=parse(Int,readline())

pre=fill(0.0, 6*S)
p=(1.0/6.0)^S

x = [1:6;; 1:6;; 1:6]

for i in x
    for j in x
        pre[i+j]+=p
    end
end

println(2<S<19 ? pre[S] : 0.0)