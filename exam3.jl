function exam_p(N,p)
    x = 0
    for i in 1:N
        x = 1-(N-i)*(N-i-1)/(N*(N-1))
        if x > p
            return i
        end
    end 
end

N,p=parse.(Float64,split(readline()))

result = exam_p(N,p)
println(trunc(Int,result))