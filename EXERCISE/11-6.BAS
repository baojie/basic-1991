10 FOR A=1 TO 9
20   FOR H=1 TO 9
25     IF A=H THEN 60
30     X=A*100000!+H*10000+H*1000+A*100+A*10+H
40     Y=H*10+A
50     IF INT(X/Y)=X/Y THEN 80
60   NEXT H
70 NEXT A
80 PRINT "ahhaah=";X,"joke=";X/Y,"ha=";Y
90 END
