5 S=2000
7 T=1
10 INPUT "请输入汽车牌号:";A$,B$,C$,D$
15 J=0:K=0:L=0:M=0
20 A=INT(RND(0)*900+100)
30 B=INT(RND(1)*900+100)
40 C=INT(RND(2)*900+100)
50 D=INT(RND(3)*900+100)
60 PRINT "1";A$;":$";A,"2"; B$ ;":$";B,"3";C$;":$";C,"4";D$;":$";D
70 PRINT "你拥有:$";S
73 PRINT "你拥有:";J;"辆";A$,K;"辆";B$,L;"辆";C$,M;"辆";D$
75 IF T=1 THEN 120
80 INPUT "你卖出几辆1";Z
83 IF Z>J THEN 80
87 J=J-Z
90 INPUT "你卖出几辆2";X
93 IF X>K THEN 90
97 K=K-X
100 INPUT "你卖出几辆3";Y
103 IF Y>L THEN 100
107 L=L-Y
110 INPUT "你卖出几辆4";G
113 IF G>M THEN 110
117 M=M-G
120 INPUT "你买进几辆1";E:J=J+E
130 INPUT "你买进几辆2";F:K=K+F
140 INPUT "你买进几辆3";H:L=L+H
145 T=T+1
150 INPUT "你买进几辆4";I:M=M+I
160 S=S+A*Z+B*X+C*Y+D*G-A*E-B*F-C*H-D*I
180 N=INT((A*J+B*K+C*L+D*M+S)/10)
190 O=INT(RND(0)*80+1)
200 PRINT "收取所得税:$";N
210 PRINT "你得到捐款:$";O
215 S=S+O-N
220 IF S<=0 THEN  240
230 GOTO 20
240 PRINT "你破产了,自杀吧!"
250 END
