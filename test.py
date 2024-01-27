pre=[0]*19
p=1.0/6.0**3
for i in range(1,7):
  for j in range(1,7):
    for k in range(1,7):
      pre[i+j+k]+=p

S=int(input())
P=0.0
if S>2 and S<19:
  P=pre[S]
print(P)