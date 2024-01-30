a = [-416, -29, -311]
b = [-345, -473, -201]
c = [-376, -142, 33]
number = 3


if length(a) > length(b)
    println(sum(sum((a*b') .> 0))/(length(a) * length(b)))
elseif length(a) < length(b)
    println(sum(sum((b'*a) .> 0))/(length(a) * length(b)*length(b)))
else
    println(sum(sum((a*b') .> 0))/(length(a) * length(b)))
end