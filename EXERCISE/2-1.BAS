0 A$="1":Z=1
11 INPUT"(0<s<200 and s/9=s\9): ",S
12 IF S<=0 OR S>=200 OR S/9<>S\9 OR S<>INT(S) THEN PRINT"WRONG!":GOTO 11
20 OPTION BASE 1
30 DIM A (9)
40 FOR I=1 TO 9
50   A(I)=I
60 NEXT
70 FOR A=1 TO 2
80   FOR B=1 TO 2
90     FOR C=1 TO 2
100      FOR D=1 TO 2
110        FOR E=1 TO 2
120          FOR F=1 TO 2
130            FOR G=1 TO 2
140              FOR H=1 TO 2
160                  IF A=1 THEN A(2)=A(2)*-1
161                  IF B=1 THEN A(3)=A(3)*-1
162                  IF C=1 THEN A(4)=A(4)*-1
163                  IF D=1 THEN A(5)=A(5)*-1
164                  IF E=1 THEN A(6)=A(6)*-1
165                  IF F=1 THEN A(7)=A(7)*-1
166                  IF G=1 THEN A(8)=A(8)*-1
167                  IF H=1 THEN A(9)=A(9)*-1
170                  FOR R=1 TO 9
180                    Z=Z+A(R)
190                  NEXT
191 IF Z=S THEN 192 ELSE 200
192 FOR R=2 TO 9
193 IF SGN(A(R))=1 THEN M=A(R):A$=A$+CHR$(43)+STR$(M) ELSE M=A(R):A$=A$+STR$(M)
194 NEXT:PRINT A$;CHR$(61);Z: T=T+1
200           A$="1":Z=0:NEXT
210            NEXT
220          NEXT
230        NEXT
240      NEXT
250    NEXT
260  NEXT
270 NEXT
275 IF T=0 THEN PRINT "NO!"
280 END
