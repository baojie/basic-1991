10 DIM X$(3,3)
20  FOR A=2 TO 3
30    FOR B=1 TO 3:IF B=A THEN 110
40      FOR C=1 TO 3:IF C=B OR C=A THEN 100
50        FOR H=1 TO 3
55          FOR S=1 TO 3:IF S=H THEN 85
60            FOR W=1 TO 3:IF W=H OR W=B OR W=S THEN  80
70              IF B<>2 AND (B=1 AND B<>H OR C=1 AND C<>H) AND (A=2 AND A=S OR B=2 AND B=S OR C=2 AND C=S) THEN 130
80            NEXT W
85          NEXT S
90        NEXT H
100     NEXT C
110   NEXT B
120 NEXT A
130 X$(2,A)="jia":X$(2,B)="yi":X$(2,C)="bin"
140 X$(3,S)="sx":X$(3,W)="wl":X$(3,H)="hx"
150 X$(1,1)="bj":X$(1,2)="sh":X$(1,3)="gz"
160 FOR I=1 TO 3
170   FOR J=1 TO 3
180    PRINT TAB(J*10+17);X$(I,J);
190   NEXT J:NEXT I
200 END
