
A = [0.0625, 0.21875, 0.0625, 0.03125,0.156, 0.34375, 0.0626, 0.0625]
F = reshape([0.0625, 0.21875, 0.0625, 0.03125,0.156, 0.34375, 0.0626, 0.0625], 4,2)'

println(F)

F /= sum(F)

eta = sum(F, dims=1)
ksi = sum(F, dims=2)


println(sum(((ksi * eta) - F).^2 ./ (ksi * eta))-1)

