 using Statistics
 
 u = [-99, 40, 33, -85]
 sig = [0.0625, 0.1875, 0.4375, 0.3125]

exp = 0


for i in 1:length(u)
    global exp += sum(u[i]*sig[i])
end

sd = 0

mean = sum(u)/length(u)

for j in 1:length(sig)
    global sd = sqrt(sum((u[j]-exp)^2*sig[j]))
end

#ez yo
sd2 = sqrt(sum((u[j]-exp)^2*sig[j] for j in 1:length(sig)))

println(exp)
println(sd)
println(sd2)