using Statistics
using Printf

function desc_2(input)
  fout = @sprintf("%.12f %.12f %.12f",mean(input),std(input),median(input))
  return fout
end

function desc(fin, fout)
  input = parse.(Float64,split(readline(fin)))
  println(fout,desc_2(input))
end
  
solve(fin, fout)=desc(fin, fout)
  
if abspath(PROGRAM_FILE)==@__FILE__
  solve(stdin, stdout)
end