ClrHome
Disp "This is a program for"
Disp "factoring cubic equations"
Disp "of the form: "
Disp "Ax+Bx²+Cx+D"
Pause 
ClrHome
Disp "What is 'A'? (If it is"
Input "blank, just put '1'): ",A
Input "What is 'B'?: ",B
Input "What is 'C'?: ",C
Input "What is 'D'?: ",D

gcd(gcd(gcd(abs(A),abs(B)),abs(C)),abs(D))→G
A/G→A
B/G→B
C/G→C
D/G→D

Pause 
ClrHome

If abs(A)≠A
Then
gcd(abs(A),abs(B))*­1→E
Else
gcd(abs(A),abs(B))→E
End

If abs(C)≠C
Then
gcd(abs(C),abs(D))*­1→F
Else
gcd(abs(C),abs(D))→F
End

If E>1
Then

If abs(E)≠E
Then
"-"+toString(abs(E))+"x²"→Str1
Else
toString(abs(E))+"x²"→Str1
End

Else
"x²"→Str1
End

If abs(F)≠F
Then
"-"+toString(abs(F))→Str2
Else
"+"+toString(F)→Str2
End

"("+Str1+Str2+")"→Str3

If abs(D/F)≠(D/F)
Then
"-"→Str4
Else
"+"→Str4
End

If abs(B)≠(B)
Then
"-"→Str5
Else
"+"→Str5
End
If abs(C)≠(C)
Then
"-"→Str6
Else
"+"→Str6
End
If abs(D)≠(D)
Then
"-"→Str7
Else
"+"→Str7
End

If (A/E)>1
Then
"("+toString(A/E)→Str8
Else
"("→Str8
End

If toString(A/E)+","+toString(B/E)=toString(C/F)+","+toString(D/F)
Then
Disp "The factored version of"
Disp "the equation is:"
Disp ""
Disp Str3+Str8+"x"+Str4+toString(abs(D/F))+")"
Else
If G>1
Then
Disp "The factored version of"
Disp "the equation is:"
Disp ""
Disp toString(G)+"("+toString(A)+"x"+Str5+toString(abs(B))+"x²"+Str6+toString(abs(C))+"x"+Str7+toString(abs(D))+")"
Else
Disp "This equation is prime"
Disp "(It couldn't be factored)"
End
End
Pause 
ClrHome
Stop
