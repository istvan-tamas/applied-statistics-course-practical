# ez a feladat megoldása megfelelő típusú paraméterrel
# jó a Range is, de nem szeretek felesleges dolgokat bevezetni
function bday2_2(p)

  x = 0.0
  for i in 1:365
    x = 1 - prod(1.0 .- (0:i-1)/365.0)
    if x >= p
      return i
    end
  end
end

# MOD
# 3 dolog
  
# ez azert jó ha van mert így a paramétert fájlból (pl. stdin) olvashatjuk és fájlba 
# írhatjuk (pl. stdout)
function bday2(fin, fout)
  p = parse(Float64, readline(fin))
  println(fout,bday2_2(p))
end
  
# ez a solve csak a tesztelő miatt kell: `solve` nevű megoldást keres és futtat
# ha 'func' módban használjuk a tesztelőt akkor ez fut
# (az összes input fájlt egyetlen julia indítással tudjuk tesztelni)
solve(fin, fout)=bday2(fin, fout)
  
# ezzel tudjuk önmagában is használni ezt a fájlt:
# julia ezafájl.jl < input 
# módon 
# ha 'prog' módban használjuk a tesztelőt akkor ez fut
# (a julia elindul minden input fájl feldolgozásakor)
if abspath(PROGRAM_FILE)==@__FILE__
  solve(stdin, stdout)
end