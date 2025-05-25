1→E
ClrHome
Disp "This is a program for"
Disp "factoring quadratic"
Disp "equations in the form 
Disp "of: Ax²+Bx+C"
Pause 
ClrHome
Input "What is 'A'?: ",A
Input "What is 'B'?: ",B
Input "What is 'C'?: ",C
gcd(gcd(abs(A),abs(B)),abs(C))→L
A/L→A
B/L→B
C/L→C
A*C→D
­1*abs(D)→F
While E
D/F→G
If (F*G)=D and (F+G)=B
Then
0→E
Else
F+1→F
If F=0
Then
F+1→F
End
End
If F>abs(D)+1
Then
If L>1
Then
ClrHome
Disp "Only this equation's:"
If abs(A)=A and abs(B)=B and abs(C)=C
Then
Disp toString(A*L)+"x²+"+toString(B*L)+"x+"+toString(C*L)
End
If abs(A)≠A and abs(B)=B and abs(C)=C
Then
Disp toString(abs(A*L))+"x²+"+toString(B*L)+"x+"+toString(C*L)
End
If abs(A)=A and abs(B)≠B and abs(C)=C
Then
Disp toString(A*L)+"x²-"+toString(abs(B*L))+"x+"+toString(C*L)
End
If abs(A)≠A and abs(B)≠B and abs(C)=C
Then
Disp toString(abs(A*L))+"x²-"+toString(abs(B*L))+"x+"+toString(C*L)
End
If abs(A)=A and abs(B)=B and abs(C)≠C
Then
Disp toString(A*L)+"x²+"+toString(B*L)+"x-"+toString(abs(C*L))
End
If abs(A)≠A and abs(B)=B and abs(C)≠C
Then
Disp toString(abs(A*L))+"x²+"+toString(B*L)+"x-"+toString(abs(C*L))
End
If abs(A)=A and abs(B)≠B and abs(C)≠C
Then
Disp  toString(A*L)+"x²-"+toString(abs(B*L))+"x-"+toString(abs(C*L))
End
If abs(A)≠A and abs(B)≠B and abs(C)≠C
Then
Disp toString(abs(A*L))+"x²-"+toString(abs(B*L))+"x-"+toString(abs(C*L))
End
Disp ""
Disp "GCF was found:"
If abs(A)≠A
Then
toString(L)+"(-"+toString(abs(A))+"x²"→Str1
Else
toString(L)+"("+toString(abs(A))+"x²"→Str1
End
If abs(B)≠B
Then
"-"+toString(abs(B))+"x"→Str2
Else
"+"+toString(abs(B))+"x"→Str2
End
If abs(C)≠C
Then
"-"+toString(abs(C))+")"→Str1
Else
"+"+toString(abs(C))+")"→Str1
End
Disp toString(L)+"("+toString(A)+"x²+"+toString(B)+"x+"+toString(C)+")"
Pause 
ClrHome 
Stop
Else
ClrHome
Disp "This equation is prime"
Pause 
Stop
End
End
End
If fPart(G/A)=0
Then
1→H
Else
2→H
End
If fPart(F/A)=0
Then
1→I
Else
2→I
End
If abs(G/A)≠(G/A)
Then
1→M
Else
2→M
End
If abs(F/A)≠(F/A)
Then
1→N
Else
2→N
End
gcd(abs(A),abs(G))→J
gcd(abs(A),abs(F))→K
ClrHome
Disp "And the factored"
If A>1
Then
If abs(A)=A and abs(B)=B and abs(C)=C
Then
Disp "equation of "+toString(A*L)+"x²+"+toString(B*L)+"x+"+toString(C*L)+" is:"
End
If abs(A)≠A and abs(B)=B and abs(C)=C
Then
Disp "equation of -"+toString(abs(A*L))+"x²+"+toString(B*L)+"x+"+toString(C*L)+" is:"
End
If abs(A)=A and abs(B)≠B and abs(C)=C
Then
Disp "equation of "+toString(A*L)+"x²-"+toString(abs(B*L))+"x+"+toString(C*L)+" is:"
End
If abs(A)≠A and abs(B)≠B and abs(C)=C
Then
Disp "equation of -"+toString(abs(A*L))+"x²-"+toString(abs(B*L))+"x+"+toString(C*L)+" is:"
End
If abs(A)=A and abs(B)=B and abs(C)≠C
Then
Disp "equation of "+toString(A*L)+"x²+"+toString(B*L)+"x-"+toString(abs(C*L))+" is:"
End
If abs(A)≠A and abs(B)=B and abs(C)≠C
Then
Disp "equation of -"+toString(abs(A*L))+"x²+"+toString(B*L)+"x-"+toString(abs(C*L))+" is:"
End
If abs(A)=A and abs(B)≠B and abs(C)≠C
Then
Disp "equation of "+toString(A*L)+"x²-"+toString(abs(B*L))+"x-"+toString(abs(C*L))+" is:"
End
If abs(A)≠A and abs(B)≠B and abs(C)≠C
Then
Disp "equation of -"+toString(abs(A*L))+"x²-"+toString(abs(B*L))+"x-"+toString(abs(C*L))+" is:"
End
Else
If abs(B)=B and abs(C)=C
Then
Disp "equation of "+"x²+"+toString(B*L)+"x+"+toString(C*L)+" is:"
End
If abs(B)≠B and abs(C)=C
Then
Disp "equation of "+"x²-"+toString(abs(B*L))+"x+"+toString(C*L)+" is:"
End
If abs(B)=B and abs(C)≠C
Then
Disp "equation of "+"x²+"+toString(B*L)+"x-"+toString(abs(C*L))+" is:"
End
If abs(B)≠B and abs(C)≠C
Then
Disp "equation of "+"x²-"+toString(abs(B*L))+"x-"+toString(abs(C*L))+" is:"
End
End
Disp ""
If M=1 and N=1
Then
If L>1
Then
If H=1 and I=1
Then
Disp toString(L)+"(x-"+toString(abs(G/A))+")"+"(x-"+toString(abs(F/A))+")"
End
If H=2 and I=1
Then
Disp toString(L)+"("+toString(abs(A/J))+"x-"+toString(abs(G/J))+")"+"(x-"+toString(abs(F/A))+")"
End
If H=1 and I=2
Then
Disp toString(L)+"(x-"+toString(abs(G/A))+")"+"("+toString(abs(A/K))+"x-"+toString(abs(F/K))+")"
End
If H=2 and I=2
Then
Disp toString(L)+"("+toString(abs(A/J))+"x-"+toString(abs(G/J))+")"+"("+toString(abs(A/K))+"x-"+toString(abs(F/K))+")"
End
Else
If H=1 and I=1
Then
Disp "(x-"+toString(abs(G/A))+")"+"(x-"+toString(abs(F/A))+")"
End
If H=2 and I=1
Then
Disp "("+toString(abs(A/J))+"x-"+toString(abs(G/J))+")"+"(x-"+toString(abs(F/A))+")"
End
If H=1 and I=2
Then
Disp "(x-"+toString(abs(G/A))+")"+"("+toString(abs(A/K))+"x-"+toString(abs(F/K))+")"
End
If H=2 and I=2
Then
Disp "("+toString(abs(A/J))+"x-"+toString(abs(G/J))+")"+"("+toString(abs(A/K))+"x-"+toString(abs(F/K))+")"
End
End
End
If M=2 and N=1
Then
If L>1
Then
If H=1 and I=1
Then
Disp toString(L)+"(x+"+toString(abs(G/A))+")"+"(x-"+toString(abs(F/A))+")"
End
If H=2 and I=1
Then
Disp toString(L)+"("+toString(abs(A/J))+"x+"+toString(abs(G/J))+")"+"(x-"+toString(abs(F/A))+")"
End
If H=1 and I=2
Then
Disp toString(L)+"(x+"+toString(abs(G/A))+")"+"("+toString(abs(A/K))+"x-"+toString(abs(F/K))+")"
End
If H=2 and I=2
Then
Disp toString(L)+"("+toString(abs(A/J))+"x+"+toString(abs(G/J))+")"+"("+toString(abs(A/K))+"x-"+toString(abs(F/K))+")"
End
Else
If H=1 and I=1
Then
Disp "(x+"+toString(abs(G/A))+")"+"(x-"+toString(abs(F/A))+")"
End
If H=2 and I=1
Then
Disp "("+toString(abs(A/J))+"x+"+toString(abs(G/J))+")"+"(x-"+toString(abs(F/A))+")"
End
If H=1 and I=2
Then
Disp "(x+"+toString(abs(G/A))+")"+"("+toString(abs(A/K))+"x-"+toString(abs(F/K))+")"
End
If H=2 and I=2
Then
Disp "("+toString(abs(A/J))+"x+"+toString(abs(G/J))+")"+"("+toString(abs(A/K))+"x-"+toString(abs(F/K))+")"
End
End
End
If M=1 and N=2
Then
If L>1
Then
If H=1 and I=1
Then
Disp toString(L)+"(x-"+toString(abs(G/A))+")"+"(x+"+toString(abs(F/A))+")"
End
If H=2 and I=1
Then
Disp toString(L)+"("+toString(abs(A/J))+"x-"+toString(abs(G/J))+")"+"(x+"+toString(abs(F/A))+")"
End
If H=1 and I=2
Then
Disp toString(L)+"(x-"+toString(abs(G/A))+")"+"("+toString(abs(A/K))+"x+"+toString(abs(F/K))+")"
End
If H=2 and I=2
Then
Disp toString(L)+"("+toString(abs(A/J))+"x-"+toString(abs(G/J))+")"+"("+toString(abs(A/K))+"x+"+toString(abs(F/K))+")"
End
Else
If H=1 and I=1
Then
Disp "(x-"+toString(abs(G/A))+")"+"(x+"+toString(abs(F/A))+")"
End
If H=2 and I=1
Then
Disp "("+toString(abs(A/J))+"x-"+toString(abs(G/J))+")"+"(x+"+toString(abs(F/A))+")"
End
If H=1 and I=2
Then
Disp "(x-"+toString(abs(G/A))+")"+"("+toString(abs(A/K))+"x+"+toString(abs(F/K))+")"
End
If H=2 and I=2
Then
Disp "("+toString(abs(A/J))+"x-"+toString(abs(G/J))+")"+"("+toString(abs(A/K))+"x+"+toString(abs(F/K))+")"
End
End
End
If M=2 and N=2
Then
If L>1
Then
If H=1 and I=1
Then
Disp toString(L)+"(x+"+toString(abs(G/A))+")"+"(x+"+toString(abs(F/A))+")"
End
If H=2 and I=1
Then
Disp toString(L)+"("+toString(abs(A/J))+"x+"+toString(abs(G/J))+")"+"(x+"+toString(abs(F/A))+")"
End
If H=1 and I=2
Then
Disp toString(L)+"(x+"+toString(abs(G/A))+")"+"("+toString(abs(A/K))+"x+"+toString(abs(F/K))+")"
End
If H=2 and I=2
Then
Disp toString(L)+"("+toString(abs(A/J))+"x+"+toString(abs(G/J))+")"+"("+toString(abs(A/K))+"x+"+toString(abs(F/K))+")"
End
Else
If H=1 and I=1
Then
Disp "(x+"+toString(abs(G/A))+")"+"(x+"+toString(abs(F/A))+")"
End
If H=2 and I=1
Then
Disp "("+toString(abs(A/J))+"x+"+toString(abs(G/J))+")"+"(x+"+toString(abs(F/A))+")"
End
If H=1 and I=2
Then
Disp "(x+"+toString(abs(G/A))+")"+"("+toString(abs(A/K))+"x+"+toString(abs(F/K))+")"
End
If H=2 and I=2
Then
Disp "("+toString(abs(A/J))+"x+"+toString(abs(G/J))+")"+"("+toString(abs(A/K))+"x+"+toString(abs(F/K))+")"
End
End
End
Pause 
