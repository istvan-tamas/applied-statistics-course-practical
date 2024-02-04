using Printf

function sample_2(n,m)
    length_of_sample = length(n)
    sort!(n)
    distribution = Float64[]
    for q in m
        counts = count(tmp -> (tmp < q), n)
        inst = counts / length_of_sample
        for i in inst
            push!(distribution, i)
        end
    end
    return distribution
end

function sample(fin, fout)
    info = parse.(Int64,split(readline(fin)))
    n = parse.(Float64,split(readline(fin)))
    m = parse.(Float64,split(readline(fin)))
    values = sample_2(n,m)
    output = ""
    for i in values
        output *= @sprintf("%.12f ", i)
    end
    println(fout, output)
end
  
solve(fin, fout)=sample(fin, fout)
  
if abspath(PROGRAM_FILE)==@__FILE__
    solve(stdin, stdout)
end